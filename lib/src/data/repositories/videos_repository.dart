import 'package:midnight_suspense/src/data/data_provider/ytexplode_provider.dart';
import 'package:midnight_suspense/src/data/models/video_model.dart';
import 'package:midnight_suspense/src/utils/helper_functions.dart';

class VideosRepository {
  VideosRepository() {
    ytProvider = YtExplodeProvider();
  }

  late final YtExplodeProvider ytProvider;

  Future<List<VideoModel>> getChannelVideos(String channelHandle) async {
    final channelId = await ytProvider.ytExplodeInstance!.channels.getByHandle(channelHandle);
    final response = await ytProvider.ytExplodeInstance!.channels.getUploadsFromPage(channelId.id);
    // response.nextPage();
    return response.map((e) => fromYoutubeVideoToAppVideoModel(e)).toList();
  }

  Future<List<VideoModel>> getPlaylistVideos(String playlistId) async {
    final response = await ytProvider.ytExplodeInstance!.playlists.getVideos(playlistId);
    return response.map((e) => fromYoutubeVideoToAppVideoModel(e)).toList();
  }

  ///! at the moment i don't want more than 20 search results but in future this functions should return VideoSearchList object and handle nextPage() in the Feature layer and convert the search results to app models
  Future<List<VideoModel>> fetchSearchResults(String query) async {
    final searchResults = await ytProvider.ytExplodeInstance!.search.search(query);
    return searchResults.map((e) => fromYoutubeVideoToAppVideoModel(e)).toList();
  }
}
