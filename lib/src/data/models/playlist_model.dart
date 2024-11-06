// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/data/data_provider/offline_db_provider.dart';
import 'package:midnight_suspense/src/data/models/video_model.dart';

part "playlist_model.g.dart";
part "playlist_model.freezed.dart";

@Collection(ignore: {"copyWith"})
@Freezed(fromJson: true, toJson: true)
class PlaylistModel with _$PlaylistModel {
  @JsonKey(
    toJson: VideoModel.videosLinksToJson,
    fromJson: VideoModel.videosLinksFromJson,
    required: false,
    includeIfNull: false,
  )
  final IsarLinks<VideoModel> videos = IsarLinks<VideoModel>();

  factory PlaylistModel({
    @Default(Isar.autoIncrement) int id,
    required String title,
    @Index(unique: true, replace: true) required String playlist_id,
  }) = _PlaylistModel;

  factory PlaylistModel.fromJson(Map<String, dynamic> json) => _$PlaylistModelFromJson(json);

  // ignore: unused_element
  PlaylistModel._();

  @override
  // ignore: override_on_non_overriding_member
  Id get id => id;

  static List<PlaylistModel> playlistLinksToJson(IsarLinks<PlaylistModel> playlist) {
    playlist.load();
    return playlist.toList();
  }

  static IsarLinks<PlaylistModel> playlistLinksFromJson(List<dynamic>? playlists) {
    if (playlists == null) {
      return IsarLinks<PlaylistModel>();
    }

    var dbProvider = getIt<OfflineDbProvider>();
    var playlistCollection = dbProvider.db.collection<PlaylistModel>();
    var playListModels = playlists.map((c) => PlaylistModel.fromJson(c as Map<String, dynamic>)).toList();
    playlistCollection.putAll(playListModels);

    IsarLinks<PlaylistModel> playlistLinks = IsarLinks<PlaylistModel>();
    playlistLinks.addAll(playListModels);

    return playlistLinks;
  }
}
