// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetVideoModelCollection on Isar {
  IsarCollection<VideoModel> get videoModels => this.collection();
}

const VideoModelSchema = CollectionSchema(
  name: r'VideoModel',
  id: -1916123326640997128,
  properties: {
    r'author': PropertySchema(
      id: 0,
      name: r'author',
      type: IsarType.string,
    ),
    r'channelId': PropertySchema(
      id: 1,
      name: r'channelId',
      type: IsarType.object,
      target: r'ChannelId',
    ),
    r'description': PropertySchema(
      id: 2,
      name: r'description',
      type: IsarType.string,
    ),
    r'duration': PropertySchema(
      id: 3,
      name: r'duration',
      type: IsarType.long,
    ),
    r'engagement': PropertySchema(
      id: 4,
      name: r'engagement',
      type: IsarType.object,
      target: r'Engagement',
    ),
    r'isLive': PropertySchema(
      id: 5,
      name: r'isLive',
      type: IsarType.bool,
    ),
    r'thumbnails': PropertySchema(
      id: 6,
      name: r'thumbnails',
      type: IsarType.object,
      target: r'ThumbnailSet',
    ),
    r'title': PropertySchema(
      id: 7,
      name: r'title',
      type: IsarType.string,
    ),
    r'uploadDate': PropertySchema(
      id: 8,
      name: r'uploadDate',
      type: IsarType.dateTime,
    ),
    r'videoId': PropertySchema(
      id: 9,
      name: r'videoId',
      type: IsarType.object,
      target: r'VideoId',
    ),
    r'videoIdIndexed': PropertySchema(
      id: 10,
      name: r'videoIdIndexed',
      type: IsarType.string,
    ),
    r'watchedDuration': PropertySchema(
      id: 11,
      name: r'watchedDuration',
      type: IsarType.long,
    )
  },
  estimateSize: _videoModelEstimateSize,
  serialize: _videoModelSerialize,
  deserialize: _videoModelDeserialize,
  deserializeProp: _videoModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'videoIdIndexed': IndexSchema(
      id: 8192269490413302213,
      name: r'videoIdIndexed',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'videoIdIndexed',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'VideoId': VideoIdSchema,
    r'ChannelId': ChannelIdSchema,
    r'ThumbnailSet': ThumbnailSetSchema,
    r'Engagement': EngagementSchema
  },
  getId: _videoModelGetId,
  getLinks: _videoModelGetLinks,
  attach: _videoModelAttach,
  version: '3.1.8',
);

int _videoModelEstimateSize(
  VideoModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.author;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.channelId;
    if (value != null) {
      bytesCount += 3 +
          ChannelIdSchema.estimateSize(
              value, allOffsets[ChannelId]!, allOffsets);
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.engagement;
    if (value != null) {
      bytesCount += 3 +
          EngagementSchema.estimateSize(
              value, allOffsets[Engagement]!, allOffsets);
    }
  }
  {
    final value = object.thumbnails;
    if (value != null) {
      bytesCount += 3 +
          ThumbnailSetSchema.estimateSize(
              value, allOffsets[ThumbnailSet]!, allOffsets);
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.videoId;
    if (value != null) {
      bytesCount += 3 +
          VideoIdSchema.estimateSize(value, allOffsets[VideoId]!, allOffsets);
    }
  }
  bytesCount += 3 + object.videoIdIndexed.length * 3;
  return bytesCount;
}

void _videoModelSerialize(
  VideoModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.author);
  writer.writeObject<ChannelId>(
    offsets[1],
    allOffsets,
    ChannelIdSchema.serialize,
    object.channelId,
  );
  writer.writeString(offsets[2], object.description);
  writer.writeLong(offsets[3], object.duration);
  writer.writeObject<Engagement>(
    offsets[4],
    allOffsets,
    EngagementSchema.serialize,
    object.engagement,
  );
  writer.writeBool(offsets[5], object.isLive);
  writer.writeObject<ThumbnailSet>(
    offsets[6],
    allOffsets,
    ThumbnailSetSchema.serialize,
    object.thumbnails,
  );
  writer.writeString(offsets[7], object.title);
  writer.writeDateTime(offsets[8], object.uploadDate);
  writer.writeObject<VideoId>(
    offsets[9],
    allOffsets,
    VideoIdSchema.serialize,
    object.videoId,
  );
  writer.writeString(offsets[10], object.videoIdIndexed);
  writer.writeLong(offsets[11], object.watchedDuration);
}

VideoModel _videoModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = VideoModel(
    author: reader.readStringOrNull(offsets[0]),
    channelId: reader.readObjectOrNull<ChannelId>(
      offsets[1],
      ChannelIdSchema.deserialize,
      allOffsets,
    ),
    description: reader.readStringOrNull(offsets[2]),
    duration: reader.readLongOrNull(offsets[3]),
    engagement: reader.readObjectOrNull<Engagement>(
      offsets[4],
      EngagementSchema.deserialize,
      allOffsets,
    ),
    isLive: reader.readBoolOrNull(offsets[5]),
    thumbnails: reader.readObjectOrNull<ThumbnailSet>(
      offsets[6],
      ThumbnailSetSchema.deserialize,
      allOffsets,
    ),
    title: reader.readStringOrNull(offsets[7]),
    uploadDate: reader.readDateTimeOrNull(offsets[8]),
    videoId: reader.readObjectOrNull<VideoId>(
      offsets[9],
      VideoIdSchema.deserialize,
      allOffsets,
    ),
    watchedDuration: reader.readLongOrNull(offsets[11]),
  );
  return object;
}

P _videoModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<ChannelId>(
        offset,
        ChannelIdSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readObjectOrNull<Engagement>(
        offset,
        EngagementSchema.deserialize,
        allOffsets,
      )) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readObjectOrNull<ThumbnailSet>(
        offset,
        ThumbnailSetSchema.deserialize,
        allOffsets,
      )) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readObjectOrNull<VideoId>(
        offset,
        VideoIdSchema.deserialize,
        allOffsets,
      )) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _videoModelGetId(VideoModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _videoModelGetLinks(VideoModel object) {
  return [];
}

void _videoModelAttach(IsarCollection<dynamic> col, Id id, VideoModel object) {}

extension VideoModelQueryWhereSort
    on QueryBuilder<VideoModel, VideoModel, QWhere> {
  QueryBuilder<VideoModel, VideoModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension VideoModelQueryWhere
    on QueryBuilder<VideoModel, VideoModel, QWhereClause> {
  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause> videoIdIndexedEqualTo(
      String videoIdIndexed) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'videoIdIndexed',
        value: [videoIdIndexed],
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterWhereClause>
      videoIdIndexedNotEqualTo(String videoIdIndexed) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'videoIdIndexed',
              lower: [],
              upper: [videoIdIndexed],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'videoIdIndexed',
              lower: [videoIdIndexed],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'videoIdIndexed',
              lower: [videoIdIndexed],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'videoIdIndexed',
              lower: [],
              upper: [videoIdIndexed],
              includeUpper: false,
            ));
      }
    });
  }
}

extension VideoModelQueryFilter
    on QueryBuilder<VideoModel, VideoModel, QFilterCondition> {
  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> authorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'author',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      authorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'author',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> authorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'author',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> authorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'author',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> authorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'author',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> authorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'author',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> authorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'author',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> authorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'author',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> authorContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'author',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> authorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'author',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> authorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'author',
        value: '',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      authorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'author',
        value: '',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      channelIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'channelId',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      channelIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'channelId',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> durationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'duration',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      durationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'duration',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> durationEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duration',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      durationGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'duration',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> durationLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'duration',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> durationBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'duration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      engagementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'engagement',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      engagementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'engagement',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
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

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> isLiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isLive',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      isLiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isLive',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> isLiveEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isLive',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      thumbnailsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'thumbnails',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      thumbnailsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'thumbnails',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      uploadDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uploadDate',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      uploadDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uploadDate',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> uploadDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uploadDate',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      uploadDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uploadDate',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      uploadDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uploadDate',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> uploadDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uploadDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> videoIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'videoId',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'videoId',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoIdIndexedEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'videoIdIndexed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoIdIndexedGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'videoIdIndexed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoIdIndexedLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'videoIdIndexed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoIdIndexedBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'videoIdIndexed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoIdIndexedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'videoIdIndexed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoIdIndexedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'videoIdIndexed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoIdIndexedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'videoIdIndexed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoIdIndexedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'videoIdIndexed',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoIdIndexedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'videoIdIndexed',
        value: '',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      videoIdIndexedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'videoIdIndexed',
        value: '',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      watchedDurationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'watchedDuration',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      watchedDurationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'watchedDuration',
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      watchedDurationEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'watchedDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      watchedDurationGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'watchedDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      watchedDurationLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'watchedDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition>
      watchedDurationBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'watchedDuration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension VideoModelQueryObject
    on QueryBuilder<VideoModel, VideoModel, QFilterCondition> {
  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> channelId(
      FilterQuery<ChannelId> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'channelId');
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> engagement(
      FilterQuery<Engagement> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'engagement');
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> thumbnails(
      FilterQuery<ThumbnailSet> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'thumbnails');
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterFilterCondition> videoId(
      FilterQuery<VideoId> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'videoId');
    });
  }
}

extension VideoModelQueryLinks
    on QueryBuilder<VideoModel, VideoModel, QFilterCondition> {}

extension VideoModelQuerySortBy
    on QueryBuilder<VideoModel, VideoModel, QSortBy> {
  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByAuthor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'author', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByAuthorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'author', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByIsLive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLive', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByIsLiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLive', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByUploadDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploadDate', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByUploadDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploadDate', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByVideoIdIndexed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoIdIndexed', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy>
      sortByVideoIdIndexedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoIdIndexed', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> sortByWatchedDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchedDuration', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy>
      sortByWatchedDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchedDuration', Sort.desc);
    });
  }
}

extension VideoModelQuerySortThenBy
    on QueryBuilder<VideoModel, VideoModel, QSortThenBy> {
  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByAuthor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'author', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByAuthorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'author', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByIsLive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLive', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByIsLiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLive', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByUploadDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploadDate', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByUploadDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploadDate', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByVideoIdIndexed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoIdIndexed', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy>
      thenByVideoIdIndexedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoIdIndexed', Sort.desc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy> thenByWatchedDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchedDuration', Sort.asc);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QAfterSortBy>
      thenByWatchedDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchedDuration', Sort.desc);
    });
  }
}

extension VideoModelQueryWhereDistinct
    on QueryBuilder<VideoModel, VideoModel, QDistinct> {
  QueryBuilder<VideoModel, VideoModel, QDistinct> distinctByAuthor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'author', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QDistinct> distinctByDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'duration');
    });
  }

  QueryBuilder<VideoModel, VideoModel, QDistinct> distinctByIsLive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isLive');
    });
  }

  QueryBuilder<VideoModel, VideoModel, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QDistinct> distinctByUploadDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uploadDate');
    });
  }

  QueryBuilder<VideoModel, VideoModel, QDistinct> distinctByVideoIdIndexed(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'videoIdIndexed',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<VideoModel, VideoModel, QDistinct> distinctByWatchedDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'watchedDuration');
    });
  }
}

extension VideoModelQueryProperty
    on QueryBuilder<VideoModel, VideoModel, QQueryProperty> {
  QueryBuilder<VideoModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<VideoModel, String?, QQueryOperations> authorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'author');
    });
  }

  QueryBuilder<VideoModel, ChannelId?, QQueryOperations> channelIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channelId');
    });
  }

  QueryBuilder<VideoModel, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<VideoModel, int?, QQueryOperations> durationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'duration');
    });
  }

  QueryBuilder<VideoModel, Engagement?, QQueryOperations> engagementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'engagement');
    });
  }

  QueryBuilder<VideoModel, bool?, QQueryOperations> isLiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isLive');
    });
  }

  QueryBuilder<VideoModel, ThumbnailSet?, QQueryOperations>
      thumbnailsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'thumbnails');
    });
  }

  QueryBuilder<VideoModel, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<VideoModel, DateTime?, QQueryOperations> uploadDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uploadDate');
    });
  }

  QueryBuilder<VideoModel, VideoId?, QQueryOperations> videoIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'videoId');
    });
  }

  QueryBuilder<VideoModel, String, QQueryOperations> videoIdIndexedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'videoIdIndexed');
    });
  }

  QueryBuilder<VideoModel, int?, QQueryOperations> watchedDurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'watchedDuration');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      id: (json['id'] as num?)?.toInt() ?? Isar.autoIncrement,
      videoId: json['videoId'] == null
          ? null
          : VideoId.fromJson(json['videoId'] as Map<String, dynamic>),
      title: json['title'] as String?,
      author: json['author'] as String?,
      channelId: json['channelId'] == null
          ? null
          : ChannelId.fromJson(json['channelId'] as Map<String, dynamic>),
      uploadDate: json['uploadDate'] == null
          ? null
          : DateTime.parse(json['uploadDate'] as String),
      description: json['description'] as String?,
      watchedDuration: (json['watchedDuration'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
      thumbnails: json['thumbnails'] == null
          ? null
          : ThumbnailSet.fromJson(json['thumbnails'] as Map<String, dynamic>),
      engagement: json['engagement'] == null
          ? null
          : Engagement.fromJson(json['engagement'] as Map<String, dynamic>),
      isLive: json['isLive'] as bool?,
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoId': instance.videoId,
      'title': instance.title,
      'author': instance.author,
      'channelId': instance.channelId,
      'uploadDate': instance.uploadDate?.toIso8601String(),
      'description': instance.description,
      'watchedDuration': instance.watchedDuration,
      'duration': instance.duration,
      'thumbnails': instance.thumbnails,
      'engagement': instance.engagement,
      'isLive': instance.isLive,
    };
