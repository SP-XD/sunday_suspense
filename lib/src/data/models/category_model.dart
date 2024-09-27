// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:midnight_suspense/src/data/models/channel_id_model.dart';
import 'package:midnight_suspense/src/data/models/engagement_model.dart';
import 'package:midnight_suspense/src/data/models/thumbnail_set_model.dart';
import 'package:midnight_suspense/src/data/models/video_id_model.dart';
import 'video_model.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@Collection(ignore: {'copyWith'})
@Freezed(fromJson: true, toJson: true)
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    @Default(Isar.autoIncrement) int id,
    @Index(unique: true, replace: true) required String category_id,
    @Enumerated(EnumType.name) required CategoryType type,
    required String title,
    List<VideoModel>? videos,
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
