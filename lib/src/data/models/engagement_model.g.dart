// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engagement_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const EngagementSchema = Schema(
  name: r'Engagement',
  id: 4548866359874980130,
  properties: {
    r'dislikeCount': PropertySchema(
      id: 0,
      name: r'dislikeCount',
      type: IsarType.long,
    ),
    r'likeCount': PropertySchema(
      id: 1,
      name: r'likeCount',
      type: IsarType.long,
    ),
    r'viewCount': PropertySchema(
      id: 2,
      name: r'viewCount',
      type: IsarType.long,
    )
  },
  estimateSize: _engagementEstimateSize,
  serialize: _engagementSerialize,
  deserialize: _engagementDeserialize,
  deserializeProp: _engagementDeserializeProp,
);

int _engagementEstimateSize(
  Engagement object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _engagementSerialize(
  Engagement object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.dislikeCount);
  writer.writeLong(offsets[1], object.likeCount);
  writer.writeLong(offsets[2], object.viewCount);
}

Engagement _engagementDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Engagement(
    dislikeCount: reader.readLongOrNull(offsets[0]),
    likeCount: reader.readLongOrNull(offsets[1]),
    viewCount: reader.readLongOrNull(offsets[2]),
  );
  return object;
}

P _engagementDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension EngagementQueryFilter
    on QueryBuilder<Engagement, Engagement, QFilterCondition> {
  QueryBuilder<Engagement, Engagement, QAfterFilterCondition>
      dislikeCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dislikeCount',
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition>
      dislikeCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dislikeCount',
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition>
      dislikeCountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dislikeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition>
      dislikeCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dislikeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition>
      dislikeCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dislikeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition>
      dislikeCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dislikeCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition>
      likeCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'likeCount',
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition>
      likeCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'likeCount',
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition> likeCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'likeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition>
      likeCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'likeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition> likeCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'likeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition> likeCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'likeCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition>
      viewCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'viewCount',
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition>
      viewCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'viewCount',
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition> viewCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'viewCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition>
      viewCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'viewCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition> viewCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'viewCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Engagement, Engagement, QAfterFilterCondition> viewCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'viewCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EngagementQueryObject
    on QueryBuilder<Engagement, Engagement, QFilterCondition> {}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EngagementImpl _$$EngagementImplFromJson(Map<String, dynamic> json) =>
    _$EngagementImpl(
      viewCount: (json['viewCount'] as num?)?.toInt() ?? null,
      likeCount: (json['likeCount'] as num?)?.toInt() ?? null,
      dislikeCount: (json['dislikeCount'] as num?)?.toInt() ?? null,
    );

Map<String, dynamic> _$$EngagementImplToJson(_$EngagementImpl instance) =>
    <String, dynamic>{
      'viewCount': instance.viewCount,
      'likeCount': instance.likeCount,
      'dislikeCount': instance.dislikeCount,
    };
