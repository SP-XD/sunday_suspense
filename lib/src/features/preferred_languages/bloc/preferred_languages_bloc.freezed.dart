// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferred_languages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PreferredLanguagesEvent {
  LanguageType get language => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LanguageType language) selectLanguage,
    required TResult Function(LanguageType language) unSelectLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LanguageType language)? selectLanguage,
    TResult? Function(LanguageType language)? unSelectLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LanguageType language)? selectLanguage,
    TResult Function(LanguageType language)? unSelectLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectLanguage value) selectLanguage,
    required TResult Function(_UnSelectLanguage value) unSelectLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectLanguage value)? selectLanguage,
    TResult? Function(_UnSelectLanguage value)? unSelectLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectLanguage value)? selectLanguage,
    TResult Function(_UnSelectLanguage value)? unSelectLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PreferredLanguagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreferredLanguagesEventCopyWith<PreferredLanguagesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferredLanguagesEventCopyWith<$Res> {
  factory $PreferredLanguagesEventCopyWith(PreferredLanguagesEvent value,
          $Res Function(PreferredLanguagesEvent) then) =
      _$PreferredLanguagesEventCopyWithImpl<$Res, PreferredLanguagesEvent>;
  @useResult
  $Res call({LanguageType language});
}

/// @nodoc
class _$PreferredLanguagesEventCopyWithImpl<$Res,
        $Val extends PreferredLanguagesEvent>
    implements $PreferredLanguagesEventCopyWith<$Res> {
  _$PreferredLanguagesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreferredLanguagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectLanguageImplCopyWith<$Res>
    implements $PreferredLanguagesEventCopyWith<$Res> {
  factory _$$SelectLanguageImplCopyWith(_$SelectLanguageImpl value,
          $Res Function(_$SelectLanguageImpl) then) =
      __$$SelectLanguageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LanguageType language});
}

/// @nodoc
class __$$SelectLanguageImplCopyWithImpl<$Res>
    extends _$PreferredLanguagesEventCopyWithImpl<$Res, _$SelectLanguageImpl>
    implements _$$SelectLanguageImplCopyWith<$Res> {
  __$$SelectLanguageImplCopyWithImpl(
      _$SelectLanguageImpl _value, $Res Function(_$SelectLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferredLanguagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_$SelectLanguageImpl(
      null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageType,
    ));
  }
}

/// @nodoc

class _$SelectLanguageImpl implements _SelectLanguage {
  const _$SelectLanguageImpl(this.language);

  @override
  final LanguageType language;

  @override
  String toString() {
    return 'PreferredLanguagesEvent.selectLanguage(language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectLanguageImpl &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language);

  /// Create a copy of PreferredLanguagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectLanguageImplCopyWith<_$SelectLanguageImpl> get copyWith =>
      __$$SelectLanguageImplCopyWithImpl<_$SelectLanguageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LanguageType language) selectLanguage,
    required TResult Function(LanguageType language) unSelectLanguage,
  }) {
    return selectLanguage(language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LanguageType language)? selectLanguage,
    TResult? Function(LanguageType language)? unSelectLanguage,
  }) {
    return selectLanguage?.call(language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LanguageType language)? selectLanguage,
    TResult Function(LanguageType language)? unSelectLanguage,
    required TResult orElse(),
  }) {
    if (selectLanguage != null) {
      return selectLanguage(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectLanguage value) selectLanguage,
    required TResult Function(_UnSelectLanguage value) unSelectLanguage,
  }) {
    return selectLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectLanguage value)? selectLanguage,
    TResult? Function(_UnSelectLanguage value)? unSelectLanguage,
  }) {
    return selectLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectLanguage value)? selectLanguage,
    TResult Function(_UnSelectLanguage value)? unSelectLanguage,
    required TResult orElse(),
  }) {
    if (selectLanguage != null) {
      return selectLanguage(this);
    }
    return orElse();
  }
}

abstract class _SelectLanguage implements PreferredLanguagesEvent {
  const factory _SelectLanguage(final LanguageType language) =
      _$SelectLanguageImpl;

  @override
  LanguageType get language;

  /// Create a copy of PreferredLanguagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectLanguageImplCopyWith<_$SelectLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnSelectLanguageImplCopyWith<$Res>
    implements $PreferredLanguagesEventCopyWith<$Res> {
  factory _$$UnSelectLanguageImplCopyWith(_$UnSelectLanguageImpl value,
          $Res Function(_$UnSelectLanguageImpl) then) =
      __$$UnSelectLanguageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LanguageType language});
}

/// @nodoc
class __$$UnSelectLanguageImplCopyWithImpl<$Res>
    extends _$PreferredLanguagesEventCopyWithImpl<$Res, _$UnSelectLanguageImpl>
    implements _$$UnSelectLanguageImplCopyWith<$Res> {
  __$$UnSelectLanguageImplCopyWithImpl(_$UnSelectLanguageImpl _value,
      $Res Function(_$UnSelectLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferredLanguagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_$UnSelectLanguageImpl(
      null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageType,
    ));
  }
}

/// @nodoc

class _$UnSelectLanguageImpl implements _UnSelectLanguage {
  const _$UnSelectLanguageImpl(this.language);

  @override
  final LanguageType language;

  @override
  String toString() {
    return 'PreferredLanguagesEvent.unSelectLanguage(language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnSelectLanguageImpl &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language);

  /// Create a copy of PreferredLanguagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnSelectLanguageImplCopyWith<_$UnSelectLanguageImpl> get copyWith =>
      __$$UnSelectLanguageImplCopyWithImpl<_$UnSelectLanguageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LanguageType language) selectLanguage,
    required TResult Function(LanguageType language) unSelectLanguage,
  }) {
    return unSelectLanguage(language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LanguageType language)? selectLanguage,
    TResult? Function(LanguageType language)? unSelectLanguage,
  }) {
    return unSelectLanguage?.call(language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LanguageType language)? selectLanguage,
    TResult Function(LanguageType language)? unSelectLanguage,
    required TResult orElse(),
  }) {
    if (unSelectLanguage != null) {
      return unSelectLanguage(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectLanguage value) selectLanguage,
    required TResult Function(_UnSelectLanguage value) unSelectLanguage,
  }) {
    return unSelectLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectLanguage value)? selectLanguage,
    TResult? Function(_UnSelectLanguage value)? unSelectLanguage,
  }) {
    return unSelectLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectLanguage value)? selectLanguage,
    TResult Function(_UnSelectLanguage value)? unSelectLanguage,
    required TResult orElse(),
  }) {
    if (unSelectLanguage != null) {
      return unSelectLanguage(this);
    }
    return orElse();
  }
}

abstract class _UnSelectLanguage implements PreferredLanguagesEvent {
  const factory _UnSelectLanguage(final LanguageType language) =
      _$UnSelectLanguageImpl;

  @override
  LanguageType get language;

  /// Create a copy of PreferredLanguagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnSelectLanguageImplCopyWith<_$UnSelectLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PreferredLanguagesState {
  List<LanguageType> get availableLanguages =>
      throw _privateConstructorUsedError;
  set availableLanguages(List<LanguageType> value) =>
      throw _privateConstructorUsedError;
  List<LanguageType> get selectedLanguages =>
      throw _privateConstructorUsedError;
  set selectedLanguages(List<LanguageType> value) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PreferredLanguagesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreferredLanguagesStateCopyWith<PreferredLanguagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferredLanguagesStateCopyWith<$Res> {
  factory $PreferredLanguagesStateCopyWith(PreferredLanguagesState value,
          $Res Function(PreferredLanguagesState) then) =
      _$PreferredLanguagesStateCopyWithImpl<$Res, PreferredLanguagesState>;
  @useResult
  $Res call(
      {List<LanguageType> availableLanguages,
      List<LanguageType> selectedLanguages});
}

/// @nodoc
class _$PreferredLanguagesStateCopyWithImpl<$Res,
        $Val extends PreferredLanguagesState>
    implements $PreferredLanguagesStateCopyWith<$Res> {
  _$PreferredLanguagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreferredLanguagesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableLanguages = null,
    Object? selectedLanguages = null,
  }) {
    return _then(_value.copyWith(
      availableLanguages: null == availableLanguages
          ? _value.availableLanguages
          : availableLanguages // ignore: cast_nullable_to_non_nullable
              as List<LanguageType>,
      selectedLanguages: null == selectedLanguages
          ? _value.selectedLanguages
          : selectedLanguages // ignore: cast_nullable_to_non_nullable
              as List<LanguageType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferredLanguagesStateImplCopyWith<$Res>
    implements $PreferredLanguagesStateCopyWith<$Res> {
  factory _$$PreferredLanguagesStateImplCopyWith(
          _$PreferredLanguagesStateImpl value,
          $Res Function(_$PreferredLanguagesStateImpl) then) =
      __$$PreferredLanguagesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LanguageType> availableLanguages,
      List<LanguageType> selectedLanguages});
}

/// @nodoc
class __$$PreferredLanguagesStateImplCopyWithImpl<$Res>
    extends _$PreferredLanguagesStateCopyWithImpl<$Res,
        _$PreferredLanguagesStateImpl>
    implements _$$PreferredLanguagesStateImplCopyWith<$Res> {
  __$$PreferredLanguagesStateImplCopyWithImpl(
      _$PreferredLanguagesStateImpl _value,
      $Res Function(_$PreferredLanguagesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferredLanguagesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableLanguages = null,
    Object? selectedLanguages = null,
  }) {
    return _then(_$PreferredLanguagesStateImpl(
      availableLanguages: null == availableLanguages
          ? _value.availableLanguages
          : availableLanguages // ignore: cast_nullable_to_non_nullable
              as List<LanguageType>,
      selectedLanguages: null == selectedLanguages
          ? _value.selectedLanguages
          : selectedLanguages // ignore: cast_nullable_to_non_nullable
              as List<LanguageType>,
    ));
  }
}

/// @nodoc

class _$PreferredLanguagesStateImpl implements _PreferredLanguagesState {
  _$PreferredLanguagesStateImpl(
      {required this.availableLanguages, required this.selectedLanguages});

  @override
  List<LanguageType> availableLanguages;
  @override
  List<LanguageType> selectedLanguages;

  @override
  String toString() {
    return 'PreferredLanguagesState(availableLanguages: $availableLanguages, selectedLanguages: $selectedLanguages)';
  }

  /// Create a copy of PreferredLanguagesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferredLanguagesStateImplCopyWith<_$PreferredLanguagesStateImpl>
      get copyWith => __$$PreferredLanguagesStateImplCopyWithImpl<
          _$PreferredLanguagesStateImpl>(this, _$identity);
}

abstract class _PreferredLanguagesState implements PreferredLanguagesState {
  factory _PreferredLanguagesState(
          {required List<LanguageType> availableLanguages,
          required List<LanguageType> selectedLanguages}) =
      _$PreferredLanguagesStateImpl;

  @override
  List<LanguageType> get availableLanguages;
  set availableLanguages(List<LanguageType> value);
  @override
  List<LanguageType> get selectedLanguages;
  set selectedLanguages(List<LanguageType> value);

  /// Create a copy of PreferredLanguagesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferredLanguagesStateImplCopyWith<_$PreferredLanguagesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
