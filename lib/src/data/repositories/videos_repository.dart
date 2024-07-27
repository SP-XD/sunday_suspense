import 'package:midnight_suspense/src/data/data_provider/ytexplode_provider.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class VideosRepository {
  VideosRepository() {
    ytProvider = YtExplodeProvider();
  }

  late final YtExplodeProvider ytProvider;

  Future<List<Video>> getHomeVideos(String channelHandle) async {
    final channelId = await ytProvider.yt!.channels.getByHandle(channelHandle);
    // final response = await ytProvider!.yt!.channels.getUploadsFromPage(channelId.id);
    // response.nextPage();
    return [];
  }

  Future<List<Video>> getPlaylistVideos(String playlistId) async {
    final response = await ytProvider.yt!.playlists.getVideos(playlistId);
    return response.toList();
  }
}
