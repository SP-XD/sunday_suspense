import 'dart:isolate';

import 'package:midnight_suspense/src/data/data_provider/ytexplode_provider.dart';
import 'package:midnight_suspense/src/data/models/video_model.dart';
import 'package:midnight_suspense/src/services/isolate_service.dart';
import 'package:midnight_suspense/src/utils/helper_functions.dart';

class VideosRepository extends IsolateService {
  VideosRepository() {
    spawnIsolate();
  }

  Future<List<VideoModel>> getChannelVideos(String channelHandle) async {
    return await addJob<List<VideoModel>>(operation: 'getChannelVideos', params: channelHandle);
  }

  Future<List<VideoModel>> getPlaylistVideos(String playlistId) async {
    return await addJob<List<VideoModel>>(operation: 'getPlaylistVideos', params: playlistId);
  }

  Future<List<VideoModel>> fetchSearchResults(String query) async {
    return await addJob<List<VideoModel>>(operation: 'fetchSearchResults', params: query);
  }

  @override
  void handleCommandsToIsolate(
    ReceivePort receivePort,
    SendPort sendPort,
  ) {
    final ytProvider = YtExplodeProvider();

    receivePort.listen((message) async {
      final (int id, dynamic command) = message as (int, dynamic);
      if (command is IsolateCommand) {
        try {
          final result = await _handleOperation(ytProvider, command.operation, command.params);
          print("command $command");
          sendPort.send((id, result));
        } catch (e, st) {
          sendPort.send((id, RemoteError(e.toString(), st.toString())));
        }
      }
    });
  }

  static Future<dynamic> _handleOperation(
    YtExplodeProvider ytProvider,
    String operation,
    dynamic params,
  ) async {
    switch (operation) {
      case 'getChannelVideos':
        final channelId = await ytProvider.ytExplodeInstance!.channels.getByHandle("@${params as String}");
        final response = await ytProvider.ytExplodeInstance!.channels.getUploadsFromPage(channelId.id);
        return response.map((e) => VideoModel.fromYoutubeVideoModel(e)).toList();

      case 'getPlaylistVideos':
        final response = await ytProvider.ytExplodeInstance!.playlists.getVideos(params as String);
        return response.map((e) => VideoModel.fromYoutubeVideoModel(e)).toList();

      case 'fetchSearchResults':
        final searchResults = await ytProvider.ytExplodeInstance!.search.search(params as String);
        return searchResults.map((e) => VideoModel.fromYoutubeVideoModel(e)).toList();

      default:
        throw UnimplementedError('Unknown operation: $operation');
    }
  }
}
