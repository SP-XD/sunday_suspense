// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/data/data_provider/offline_db_provider.dart';
import 'package:midnight_suspense/src/data/models/category_model.dart';
import 'package:midnight_suspense/src/data/models/channel_id_model.dart';
import 'package:midnight_suspense/src/data/models/engagement_model.dart';
import 'package:midnight_suspense/src/data/models/new_releases_model.dart';
import 'package:midnight_suspense/src/data/models/thumbnail_set_model.dart';
import 'package:midnight_suspense/src/data/models/video_id_model.dart';
import 'package:midnight_suspense/src/data/models/video_model.dart';

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
    includeIfNull: false,
  )
  IsarLinks<CategoryModel> userCategories = IsarLinks<CategoryModel>();
  @Enumerated(EnumType.name)
  @JsonKey(
    required: false,
    includeIfNull: false,
    defaultValue: [],
  )
  List<LanguageType> selectedLanguages = [];
  @JsonKey(
    required: false,
    includeIfNull: false,
    defaultValue: false,
  )
  bool isOnboardingDone = false;
  @Enumerated(EnumType.name)
  @JsonKey(
    required: false,
    includeIfNull: false,
    defaultValue: DataQuality.high,
  )
  DataQuality dataQuality = DataQuality.high;
  @JsonKey(
    required: false,
    includeIfNull: false,
    includeFromJson: false,
    includeToJson: false,
  )
  // TODO: implement this with notifying of new releases in the future
//   NewReleasesModel? newReleases;

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

  static IsarLinks<CategoryModel> _categoryLinksFromJson(List<dynamic>? categories) {
    if (categories == null) {
      return IsarLinks<CategoryModel>();
    }

    var dbProvider = getIt<OfflineDbProvider>();
    dbProvider
        .upsertCategory(categories.map((c) => CategoryModel.fromJson(c as Map<String, dynamic>)).toList());

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

enum DataQuality {
  low,
  medium,
  high,
}
