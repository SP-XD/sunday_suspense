// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/data/data_provider/offline_db_provider.dart';
import 'package:midnight_suspense/src/data/models/category_model.dart';

part 'app_data_model.g.dart';

@Collection()
@JsonSerializable()
class AppData {
  Id? id;
  @JsonKey(required: true)
  String? categoryVersion;
  @JsonKey(toJson: _categoryLinksToJson, fromJson: _categoryLinksFromJson, required: true)
  IsarLinks<CategoryModel> builtInCategories = IsarLinks<CategoryModel>();
  @JsonKey(
    toJson: _categoryLinksToJson,
    fromJson: _categoryLinksFromJson,
    required: false,
  )
  IsarLinks<CategoryModel> userCategories = IsarLinks<CategoryModel>();
  @JsonKey(
    required: false,
  )
  @Enumerated(EnumType.name)
  List<LanguageType> selectedLanguages = [];

  AppData({
    this.id,
    required this.categoryVersion,
  });

  factory AppData.fromJson(Map<String, dynamic> json) => _$AppDataFromJson(json);
  Map<String, dynamic> toJson() => _$AppDataToJson(this);

  // ignore: unused_element
  AppData._();

  static List<CategoryModel> _categoryLinksToJson(IsarLinks<CategoryModel> categories) {
    categories.load();
    return categories.toList();
  }

  static IsarLinks<CategoryModel> _categoryLinksFromJson(List<Map<String, dynamic>> categories) {
    var dbProvider = getIt<OfflineDbProvider>();
    dbProvider.upsertCategory(categories.map((c) => CategoryModel.fromJson(c)).toList());
    return dbProvider.appData?.builtInCategories ?? IsarLinks<CategoryModel>();
  }

  @override
  String toString() => 'AppData(id: $id, categoryVersion: $categoryVersion)';

  @override
  bool operator ==(covariant AppData other) {
    if (identical(this, other)) return true;

    return other.id == id && other.categoryVersion == categoryVersion;
  }

  @override
  int get hashCode => id.hashCode ^ categoryVersion.hashCode;
}
