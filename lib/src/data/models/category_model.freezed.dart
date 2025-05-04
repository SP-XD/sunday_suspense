// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  int get id => throw _privateConstructorUsedError;
  @Index(unique: true, replace: true)
  String get internal_id => throw _privateConstructorUsedError;
  String get category_id => throw _privateConstructorUsedError;
  @Enumerated(EnumType.name)
  CategoryType get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get artUrl => throw _privateConstructorUsedError;
  @Enumerated(EnumType.name)
  CategorySourceType get sourceType => throw _privateConstructorUsedError;
  @Enumerated(EnumType.name)
  LanguageType get language => throw _privateConstructorUsedError;

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {int id,
      @Index(unique: true, replace: true) String internal_id,
      String category_id,
      @Enumerated(EnumType.name) CategoryType type,
      String title,
      String? artUrl,
      @Enumerated(EnumType.name) CategorySourceType sourceType,
      @Enumerated(EnumType.name) LanguageType language});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? internal_id = null,
    Object? category_id = null,
    Object? type = null,
    Object? title = null,
    Object? artUrl = freezed,
    Object? sourceType = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      internal_id: null == internal_id
          ? _value.internal_id
          : internal_id // ignore: cast_nullable_to_non_nullable
              as String,
      category_id: null == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CategoryType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artUrl: freezed == artUrl
          ? _value.artUrl
          : artUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as CategorySourceType,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @Index(unique: true, replace: true) String internal_id,
      String category_id,
      @Enumerated(EnumType.name) CategoryType type,
      String title,
      String? artUrl,
      @Enumerated(EnumType.name) CategorySourceType sourceType,
      @Enumerated(EnumType.name) LanguageType language});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? internal_id = null,
    Object? category_id = null,
    Object? type = null,
    Object? title = null,
    Object? artUrl = freezed,
    Object? sourceType = null,
    Object? language = null,
  }) {
    return _then(_$CategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      internal_id: null == internal_id
          ? _value.internal_id
          : internal_id // ignore: cast_nullable_to_non_nullable
              as String,
      category_id: null == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CategoryType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artUrl: freezed == artUrl
          ? _value.artUrl
          : artUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as CategorySourceType,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl extends _CategoryModel {
  _$CategoryModelImpl(
      {this.id = Isar.autoIncrement,
      @Index(unique: true, replace: true) required this.internal_id,
      required this.category_id,
      @Enumerated(EnumType.name) required this.type,
      required this.title,
      required this.artUrl,
      @Enumerated(EnumType.name) required this.sourceType,
      @Enumerated(EnumType.name) required this.language})
      : super._();

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @Index(unique: true, replace: true)
  final String internal_id;
  @override
  final String category_id;
  @override
  @Enumerated(EnumType.name)
  final CategoryType type;
  @override
  final String title;
  @override
  final String? artUrl;
  @override
  @Enumerated(EnumType.name)
  final CategorySourceType sourceType;
  @override
  @Enumerated(EnumType.name)
  final LanguageType language;

  @override
  String toString() {
    return 'CategoryModel(id: $id, internal_id: $internal_id, category_id: $category_id, type: $type, title: $title, artUrl: $artUrl, sourceType: $sourceType, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.internal_id, internal_id) ||
                other.internal_id == internal_id) &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artUrl, artUrl) || other.artUrl == artUrl) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, internal_id, category_id,
      type, title, artUrl, sourceType, language);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel extends CategoryModel {
  factory _CategoryModel(
      {final int id,
      @Index(unique: true, replace: true) required final String internal_id,
      required final String category_id,
      @Enumerated(EnumType.name) required final CategoryType type,
      required final String title,
      required final String? artUrl,
      @Enumerated(EnumType.name) required final CategorySourceType sourceType,
      @Enumerated(EnumType.name)
      required final LanguageType language}) = _$CategoryModelImpl;
  _CategoryModel._() : super._();

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  int get id;
  @override
  @Index(unique: true, replace: true)
  String get internal_id;
  @override
  String get category_id;
  @override
  @Enumerated(EnumType.name)
  CategoryType get type;
  @override
  String get title;
  @override
  String? get artUrl;
  @override
  @Enumerated(EnumType.name)
  CategorySourceType get sourceType;
  @override
  @Enumerated(EnumType.name)
  LanguageType get language;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
