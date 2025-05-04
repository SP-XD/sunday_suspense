// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'playlist_model.dart';
import 'video_model.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@Collection(ignore: {'copyWith'})
@Freezed(fromJson: true, toJson: true)
class CategoryModel with _$CategoryModel {
  @JsonKey(
    toJson: VideoModel.videosLinksToJson,
    fromJson: VideoModel.videosLinksFromJson,
    required: false,
    includeIfNull: false,
  )
  final IsarLinks<VideoModel> videos = IsarLinks<VideoModel>();
  @JsonKey(
    toJson: PlaylistModel.playlistLinksToJson,
    fromJson: PlaylistModel.playlistLinksFromJson,
    required: true,
    includeIfNull: false,
  )
  final IsarLinks<PlaylistModel> playlists = IsarLinks<PlaylistModel>();

  factory CategoryModel({
    @Default(Isar.autoIncrement) int id,
    @Index(unique: true, replace: true) required String internal_id,
    required String category_id,
    @Enumerated(EnumType.name) required CategoryType type,
    required String title,
    required String? artUrl,
    @Enumerated(EnumType.name) required CategorySourceType sourceType,
    @Enumerated(EnumType.name) required LanguageType language,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  // ignore: unused_element
  CategoryModel._();

  @override
  Id get id => id;
}

enum CategoryType {
  channel,
  playlist,
  history,
  liked,
}

enum CategorySourceType {
  builtInCategory,
  userCategory,
}

enum LanguageType {
  english,
  bengali,
  hindi,
  telegu,
  tamil,
  kannada,
}

extension LanguageTypeExtension on LanguageType {
  String get symbol {
    switch (this) {
      case LanguageType.english:
        return 'E';
      case LanguageType.bengali:
        return 'অ';
      case LanguageType.hindi:
        return 'अ';
      case LanguageType.telegu:
        return 'అ';
      case LanguageType.tamil:
        return 'அ';
      case LanguageType.kannada:
        return 'ಅ';
    }
  }

  String get displayName {
    switch (this) {
      case LanguageType.english:
        return 'English';
      case LanguageType.bengali:
        return 'Bengali';
      case LanguageType.hindi:
        return 'Hindi';
      case LanguageType.telegu:
        return 'Telegu';
      case LanguageType.tamil:
        return 'Tamil';
      case LanguageType.kannada:
        return 'Kannada';
    }
  }

  String get displayNameForUseWithSymbol {
    switch (this) {
      case LanguageType.english:
        return 'nglish'; // as E is already the symbol
      case LanguageType.bengali:
        return 'Bengali';
      case LanguageType.hindi:
        return 'Hindi';
      case LanguageType.telegu:
        return 'Telegu';
      case LanguageType.tamil:
        return 'Tamil';
      case LanguageType.kannada:
        return 'Kannada';
    }
  }
}
