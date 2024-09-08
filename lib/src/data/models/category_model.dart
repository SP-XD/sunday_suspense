import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'channel_id_model.dart';
import 'engagement_model.dart';
import 'thumbnail_set_model.dart';
import 'video_id_model.dart';
import 'video_model.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@Collection(ignore: {'copyWith'})
@Freezed(fromJson: true, toJson: true)
class CategoryModel with _$CategoryModel {
  /// isar id
  Id get id => Isar.autoIncrement;

  factory CategoryModel({
    required String category_id,
    // ignore: invalid_annotation_target
    @Enumerated(EnumType.name) required CategoryType type,
    required String title,
    List<VideoModel>? videos,
    // ignore: invalid_annotation_target
    @Enumerated(EnumType.name) required CategorySourceType sourceType,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  // ignore: unused_element
  CategoryModel._();
}

enum CategoryType {
  channel,
  playlist,
  history,
}

enum CategorySourceType {
  builtInCategory,
  userCategory,
}
