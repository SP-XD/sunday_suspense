// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_releases_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const NewReleasesModelSchema = Schema(
  name: r'NewReleasesModel',
  id: -2442218322942053641,
  properties: {
    r'lastUpdatedDate': PropertySchema(
      id: 0,
      name: r'lastUpdatedDate',
      type: IsarType.dateTime,
    ),
    r'releases': PropertySchema(
      id: 1,
      name: r'releases',
      type: IsarType.objectList,
      target: r'VideoModel',
    )
  },
  estimateSize: _newReleasesModelEstimateSize,
  serialize: _newReleasesModelSerialize,
  deserialize: _newReleasesModelDeserialize,
  deserializeProp: _newReleasesModelDeserializeProp,
);

int _newReleasesModelEstimateSize(
  NewReleasesModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.releases;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[VideoModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              VideoModelSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _newReleasesModelSerialize(
  NewReleasesModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.lastUpdatedDate);
  writer.writeObjectList<VideoModel>(
    offsets[1],
    allOffsets,
    VideoModelSchema.serialize,
    object.releases,
  );
}

NewReleasesModel _newReleasesModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NewReleasesModel(
    lastUpdatedDate: reader.readDateTimeOrNull(offsets[0]),
    releases: reader.readObjectList<VideoModel>(
      offsets[1],
      VideoModelSchema.deserialize,
      allOffsets,
      VideoModel(),
    ),
  );
  return object;
}

P _newReleasesModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readObjectList<VideoModel>(
        offset,
        VideoModelSchema.deserialize,
        allOffsets,
        VideoModel(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension NewReleasesModelQueryFilter
    on QueryBuilder<NewReleasesModel, NewReleasesModel, QFilterCondition> {
  QueryBuilder<NewReleasesModel, NewReleasesModel, QAfterFilterCondition>
      lastUpdatedDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastUpdatedDate',
      ));
    });
  }

  QueryBuilder<NewReleasesModel, NewReleasesModel, QAfterFilterCondition>
      lastUpdatedDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastUpdatedDate',
      ));
    });
  }

  QueryBuilder<NewReleasesModel, NewReleasesModel, QAfterFilterCondition>
      lastUpdatedDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUpdatedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NewReleasesModel, NewReleasesModel, QAfterFilterCondition>
      lastUpdatedDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastUpdatedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NewReleasesModel, NewReleasesModel, QAfterFilterCondition>
      lastUpdatedDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastUpdatedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<NewReleasesModel, NewReleasesModel, QAfterFilterCondition>
      lastUpdatedDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastUpdatedDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NewReleasesModel, NewReleasesModel, QAfterFilterCondition>
      releasesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'releases',
      ));
    });
  }

  QueryBuilder<NewReleasesModel, NewReleasesModel, QAfterFilterCondition>
      releasesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'releases',
      ));
    });
  }

  QueryBuilder<NewReleasesModel, NewReleasesModel, QAfterFilterCondition>
      releasesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'releases',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<NewReleasesModel, NewReleasesModel, QAfterFilterCondition>
      releasesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'releases',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<NewReleasesModel, NewReleasesModel, QAfterFilterCondition>
      releasesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'releases',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NewReleasesModel, NewReleasesModel, QAfterFilterCondition>
      releasesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'releases',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<NewReleasesModel, NewReleasesModel, QAfterFilterCondition>
      releasesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'releases',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<NewReleasesModel, NewReleasesModel, QAfterFilterCondition>
      releasesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'releases',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension NewReleasesModelQueryObject
    on QueryBuilder<NewReleasesModel, NewReleasesModel, QFilterCondition> {
  QueryBuilder<NewReleasesModel, NewReleasesModel, QAfterFilterCondition>
      releasesElement(FilterQuery<VideoModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'releases');
    });
  }
}
