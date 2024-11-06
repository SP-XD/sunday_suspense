// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_data_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppDataCollection on Isar {
  IsarCollection<AppData> get appDatas => this.collection();
}

const AppDataSchema = CollectionSchema(
  name: r'AppData',
  id: 3950144987861183497,
  properties: {
    r'categoryVersion': PropertySchema(
      id: 0,
      name: r'categoryVersion',
      type: IsarType.string,
    ),
    r'dataQuality': PropertySchema(
      id: 1,
      name: r'dataQuality',
      type: IsarType.string,
      enumMap: _AppDatadataQualityEnumValueMap,
    ),
    r'hashCode': PropertySchema(
      id: 2,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'isOnboardingDone': PropertySchema(
      id: 3,
      name: r'isOnboardingDone',
      type: IsarType.bool,
    ),
    r'selectedLanguages': PropertySchema(
      id: 4,
      name: r'selectedLanguages',
      type: IsarType.stringList,
      enumMap: _AppDataselectedLanguagesEnumValueMap,
    )
  },
  estimateSize: _appDataEstimateSize,
  serialize: _appDataSerialize,
  deserialize: _appDataDeserialize,
  deserializeProp: _appDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'builtInCategories': LinkSchema(
      id: -5259020885634174244,
      name: r'builtInCategories',
      target: r'CategoryModel',
      single: false,
    ),
    r'userCategories': LinkSchema(
      id: 7708605048581615546,
      name: r'userCategories',
      target: r'CategoryModel',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _appDataGetId,
  getLinks: _appDataGetLinks,
  attach: _appDataAttach,
  version: '3.1.8',
);

int _appDataEstimateSize(
  AppData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.categoryVersion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.dataQuality.name.length * 3;
  bytesCount += 3 + object.selectedLanguages.length * 3;
  {
    for (var i = 0; i < object.selectedLanguages.length; i++) {
      final value = object.selectedLanguages[i];
      bytesCount += value.name.length * 3;
    }
  }
  return bytesCount;
}

void _appDataSerialize(
  AppData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.categoryVersion);
  writer.writeString(offsets[1], object.dataQuality.name);
  writer.writeLong(offsets[2], object.hashCode);
  writer.writeBool(offsets[3], object.isOnboardingDone);
  writer.writeStringList(
      offsets[4], object.selectedLanguages.map((e) => e.name).toList());
}

AppData _appDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppData(
    categoryVersion: reader.readStringOrNull(offsets[0]),
    id: id,
  );
  object.dataQuality =
      _AppDatadataQualityValueEnumMap[reader.readStringOrNull(offsets[1])] ??
          DataQuality.low;
  object.isOnboardingDone = reader.readBool(offsets[3]);
  object.selectedLanguages = reader
          .readStringList(offsets[4])
          ?.map((e) =>
              _AppDataselectedLanguagesValueEnumMap[e] ?? LanguageType.english)
          .toList() ??
      [];
  return object;
}

P _appDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (_AppDatadataQualityValueEnumMap[
              reader.readStringOrNull(offset)] ??
          DataQuality.low) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader
              .readStringList(offset)
              ?.map((e) =>
                  _AppDataselectedLanguagesValueEnumMap[e] ??
                  LanguageType.english)
              .toList() ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AppDatadataQualityEnumValueMap = {
  r'low': r'low',
  r'medium': r'medium',
  r'high': r'high',
};
const _AppDatadataQualityValueEnumMap = {
  r'low': DataQuality.low,
  r'medium': DataQuality.medium,
  r'high': DataQuality.high,
};
const _AppDataselectedLanguagesEnumValueMap = {
  r'english': r'english',
  r'bengali': r'bengali',
  r'hindi': r'hindi',
  r'telegu': r'telegu',
  r'tamil': r'tamil',
  r'kannada': r'kannada',
};
const _AppDataselectedLanguagesValueEnumMap = {
  r'english': LanguageType.english,
  r'bengali': LanguageType.bengali,
  r'hindi': LanguageType.hindi,
  r'telegu': LanguageType.telegu,
  r'tamil': LanguageType.tamil,
  r'kannada': LanguageType.kannada,
};

Id _appDataGetId(AppData object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _appDataGetLinks(AppData object) {
  return [object.builtInCategories, object.userCategories];
}

void _appDataAttach(IsarCollection<dynamic> col, Id id, AppData object) {
  object.id = id;
  object.builtInCategories.attach(
      col, col.isar.collection<CategoryModel>(), r'builtInCategories', id);
  object.userCategories
      .attach(col, col.isar.collection<CategoryModel>(), r'userCategories', id);
}

extension AppDataQueryWhereSort on QueryBuilder<AppData, AppData, QWhere> {
  QueryBuilder<AppData, AppData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppDataQueryWhere on QueryBuilder<AppData, AppData, QWhereClause> {
  QueryBuilder<AppData, AppData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AppData, AppData, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppData, AppData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppData, AppData, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppDataQueryFilter
    on QueryBuilder<AppData, AppData, QFilterCondition> {
  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      categoryVersionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categoryVersion',
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      categoryVersionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categoryVersion',
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> categoryVersionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryVersion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      categoryVersionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoryVersion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> categoryVersionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoryVersion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> categoryVersionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoryVersion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      categoryVersionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoryVersion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> categoryVersionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoryVersion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> categoryVersionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoryVersion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> categoryVersionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoryVersion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      categoryVersionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryVersion',
        value: '',
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      categoryVersionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoryVersion',
        value: '',
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> dataQualityEqualTo(
    DataQuality value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataQuality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> dataQualityGreaterThan(
    DataQuality value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dataQuality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> dataQualityLessThan(
    DataQuality value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dataQuality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> dataQualityBetween(
    DataQuality lower,
    DataQuality upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dataQuality',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> dataQualityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dataQuality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> dataQualityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dataQuality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> dataQualityContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dataQuality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> dataQualityMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dataQuality',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> dataQualityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataQuality',
        value: '',
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      dataQualityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dataQuality',
        value: '',
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> isOnboardingDoneEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isOnboardingDone',
        value: value,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesElementEqualTo(
    LanguageType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedLanguages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesElementGreaterThan(
    LanguageType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'selectedLanguages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesElementLessThan(
    LanguageType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'selectedLanguages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesElementBetween(
    LanguageType lower,
    LanguageType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'selectedLanguages',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'selectedLanguages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'selectedLanguages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'selectedLanguages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'selectedLanguages',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedLanguages',
        value: '',
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'selectedLanguages',
        value: '',
      ));
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedLanguages',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedLanguages',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedLanguages',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedLanguages',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedLanguages',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      selectedLanguagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedLanguages',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension AppDataQueryObject
    on QueryBuilder<AppData, AppData, QFilterCondition> {}

extension AppDataQueryLinks
    on QueryBuilder<AppData, AppData, QFilterCondition> {
  QueryBuilder<AppData, AppData, QAfterFilterCondition> builtInCategories(
      FilterQuery<CategoryModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'builtInCategories');
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      builtInCategoriesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'builtInCategories', length, true, length, true);
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      builtInCategoriesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'builtInCategories', 0, true, 0, true);
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      builtInCategoriesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'builtInCategories', 0, false, 999999, true);
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      builtInCategoriesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'builtInCategories', 0, true, length, include);
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      builtInCategoriesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'builtInCategories', length, include, 999999, true);
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      builtInCategoriesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'builtInCategories', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition> userCategories(
      FilterQuery<CategoryModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'userCategories');
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      userCategoriesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'userCategories', length, true, length, true);
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      userCategoriesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'userCategories', 0, true, 0, true);
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      userCategoriesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'userCategories', 0, false, 999999, true);
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      userCategoriesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'userCategories', 0, true, length, include);
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      userCategoriesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'userCategories', length, include, 999999, true);
    });
  }

  QueryBuilder<AppData, AppData, QAfterFilterCondition>
      userCategoriesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'userCategories', lower, includeLower, upper, includeUpper);
    });
  }
}

extension AppDataQuerySortBy on QueryBuilder<AppData, AppData, QSortBy> {
  QueryBuilder<AppData, AppData, QAfterSortBy> sortByCategoryVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryVersion', Sort.asc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> sortByCategoryVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryVersion', Sort.desc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> sortByDataQuality() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataQuality', Sort.asc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> sortByDataQualityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataQuality', Sort.desc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> sortByIsOnboardingDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnboardingDone', Sort.asc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> sortByIsOnboardingDoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnboardingDone', Sort.desc);
    });
  }
}

extension AppDataQuerySortThenBy
    on QueryBuilder<AppData, AppData, QSortThenBy> {
  QueryBuilder<AppData, AppData, QAfterSortBy> thenByCategoryVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryVersion', Sort.asc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> thenByCategoryVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryVersion', Sort.desc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> thenByDataQuality() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataQuality', Sort.asc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> thenByDataQualityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataQuality', Sort.desc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> thenByIsOnboardingDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnboardingDone', Sort.asc);
    });
  }

  QueryBuilder<AppData, AppData, QAfterSortBy> thenByIsOnboardingDoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnboardingDone', Sort.desc);
    });
  }
}

extension AppDataQueryWhereDistinct
    on QueryBuilder<AppData, AppData, QDistinct> {
  QueryBuilder<AppData, AppData, QDistinct> distinctByCategoryVersion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryVersion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppData, AppData, QDistinct> distinctByDataQuality(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dataQuality', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppData, AppData, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<AppData, AppData, QDistinct> distinctByIsOnboardingDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isOnboardingDone');
    });
  }

  QueryBuilder<AppData, AppData, QDistinct> distinctBySelectedLanguages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedLanguages');
    });
  }
}

extension AppDataQueryProperty
    on QueryBuilder<AppData, AppData, QQueryProperty> {
  QueryBuilder<AppData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppData, String?, QQueryOperations> categoryVersionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryVersion');
    });
  }

  QueryBuilder<AppData, DataQuality, QQueryOperations> dataQualityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dataQuality');
    });
  }

  QueryBuilder<AppData, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<AppData, bool, QQueryOperations> isOnboardingDoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isOnboardingDone');
    });
  }

  QueryBuilder<AppData, List<LanguageType>, QQueryOperations>
      selectedLanguagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedLanguages');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppData _$AppDataFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['categoryVersion', 'builtInCategories'],
  );
  return AppData(
    id: (json['id'] as num?)?.toInt(),
    categoryVersion: json['categoryVersion'] as String?,
  )
    ..builtInCategories =
        AppData._categoryLinksFromJson(json['builtInCategories'] as List?)
    ..userCategories =
        AppData._categoryLinksFromJson(json['userCategories'] as List?)
    ..selectedLanguages = (json['selectedLanguages'] as List<dynamic>?)
            ?.map((e) => $enumDecode(_$LanguageTypeEnumMap, e))
            .toList() ??
        []
    ..isOnboardingDone = json['isOnboardingDone'] as bool? ?? false
    ..dataQuality =
        $enumDecodeNullable(_$DataQualityEnumMap, json['dataQuality']) ??
            DataQuality.high;
}

Map<String, dynamic> _$AppDataToJson(AppData instance) => <String, dynamic>{
      'id': instance.id,
      'categoryVersion': instance.categoryVersion,
      'builtInCategories':
          AppData._categoryLinksToJson(instance.builtInCategories),
      'userCategories': AppData._categoryLinksToJson(instance.userCategories),
      'selectedLanguages': instance.selectedLanguages
          .map((e) => _$LanguageTypeEnumMap[e]!)
          .toList(),
      'isOnboardingDone': instance.isOnboardingDone,
      'dataQuality': _$DataQualityEnumMap[instance.dataQuality]!,
    };

const _$LanguageTypeEnumMap = {
  LanguageType.english: 'english',
  LanguageType.bengali: 'bengali',
  LanguageType.hindi: 'hindi',
  LanguageType.telegu: 'telegu',
  LanguageType.tamil: 'tamil',
  LanguageType.kannada: 'kannada',
};

const _$DataQualityEnumMap = {
  DataQuality.low: 'low',
  DataQuality.medium: 'medium',
  DataQuality.high: 'high',
};
