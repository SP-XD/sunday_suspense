// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPlaylistModelCollection on Isar {
  IsarCollection<PlaylistModel> get playlistModels => this.collection();
}

const PlaylistModelSchema = CollectionSchema(
  name: r'PlaylistModel',
  id: -3528207141634668389,
  properties: {
    r'description': PropertySchema(
      id: 0,
      name: r'description',
      type: IsarType.string,
    ),
    r'engagement': PropertySchema(
      id: 1,
      name: r'engagement',
      type: IsarType.object,
      target: r'Engagement',
    ),
    r'playlist_id': PropertySchema(
      id: 2,
      name: r'playlist_id',
      type: IsarType.string,
    ),
    r'thumbnails': PropertySchema(
      id: 3,
      name: r'thumbnails',
      type: IsarType.object,
      target: r'ThumbnailSet',
    ),
    r'title': PropertySchema(
      id: 4,
      name: r'title',
      type: IsarType.string,
    ),
    r'videoCount': PropertySchema(
      id: 5,
      name: r'videoCount',
      type: IsarType.long,
    )
  },
  estimateSize: _playlistModelEstimateSize,
  serialize: _playlistModelSerialize,
  deserialize: _playlistModelDeserialize,
  deserializeProp: _playlistModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'playlist_id': IndexSchema(
      id: 3007109704757925818,
      name: r'playlist_id',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'playlist_id',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {
    r'videos': LinkSchema(
      id: 3287337669621064363,
      name: r'videos',
      target: r'VideoModel',
      single: false,
    )
  },
  embeddedSchemas: {
    r'ThumbnailSet': ThumbnailSetSchema,
    r'Engagement': EngagementSchema
  },
  getId: _playlistModelGetId,
  getLinks: _playlistModelGetLinks,
  attach: _playlistModelAttach,
  version: '3.1.8',
);

int _playlistModelEstimateSize(
  PlaylistModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
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
  bytesCount += 3 + object.playlist_id.length * 3;
  {
    final value = object.thumbnails;
    if (value != null) {
      bytesCount += 3 +
          ThumbnailSetSchema.estimateSize(
              value, allOffsets[ThumbnailSet]!, allOffsets);
    }
  }
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _playlistModelSerialize(
  PlaylistModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.description);
  writer.writeObject<Engagement>(
    offsets[1],
    allOffsets,
    EngagementSchema.serialize,
    object.engagement,
  );
  writer.writeString(offsets[2], object.playlist_id);
  writer.writeObject<ThumbnailSet>(
    offsets[3],
    allOffsets,
    ThumbnailSetSchema.serialize,
    object.thumbnails,
  );
  writer.writeString(offsets[4], object.title);
  writer.writeLong(offsets[5], object.videoCount);
}

PlaylistModel _playlistModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PlaylistModel(
    description: reader.readStringOrNull(offsets[0]),
    engagement: reader.readObjectOrNull<Engagement>(
      offsets[1],
      EngagementSchema.deserialize,
      allOffsets,
    ),
    id: id,
    playlist_id: reader.readString(offsets[2]),
    thumbnails: reader.readObjectOrNull<ThumbnailSet>(
      offsets[3],
      ThumbnailSetSchema.deserialize,
      allOffsets,
    ),
    title: reader.readString(offsets[4]),
    videoCount: reader.readLongOrNull(offsets[5]),
  );
  return object;
}

P _playlistModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<Engagement>(
        offset,
        EngagementSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readObjectOrNull<ThumbnailSet>(
        offset,
        ThumbnailSetSchema.deserialize,
        allOffsets,
      )) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _playlistModelGetId(PlaylistModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _playlistModelGetLinks(PlaylistModel object) {
  return [object.videos];
}

void _playlistModelAttach(
    IsarCollection<dynamic> col, Id id, PlaylistModel object) {
  object.videos.attach(col, col.isar.collection<VideoModel>(), r'videos', id);
}

extension PlaylistModelByIndex on IsarCollection<PlaylistModel> {
  Future<PlaylistModel?> getByPlaylist_id(String playlist_id) {
    return getByIndex(r'playlist_id', [playlist_id]);
  }

  PlaylistModel? getByPlaylist_idSync(String playlist_id) {
    return getByIndexSync(r'playlist_id', [playlist_id]);
  }

  Future<bool> deleteByPlaylist_id(String playlist_id) {
    return deleteByIndex(r'playlist_id', [playlist_id]);
  }

  bool deleteByPlaylist_idSync(String playlist_id) {
    return deleteByIndexSync(r'playlist_id', [playlist_id]);
  }

  Future<List<PlaylistModel?>> getAllByPlaylist_id(
      List<String> playlist_idValues) {
    final values = playlist_idValues.map((e) => [e]).toList();
    return getAllByIndex(r'playlist_id', values);
  }

  List<PlaylistModel?> getAllByPlaylist_idSync(List<String> playlist_idValues) {
    final values = playlist_idValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'playlist_id', values);
  }

  Future<int> deleteAllByPlaylist_id(List<String> playlist_idValues) {
    final values = playlist_idValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'playlist_id', values);
  }

  int deleteAllByPlaylist_idSync(List<String> playlist_idValues) {
    final values = playlist_idValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'playlist_id', values);
  }

  Future<Id> putByPlaylist_id(PlaylistModel object) {
    return putByIndex(r'playlist_id', object);
  }

  Id putByPlaylist_idSync(PlaylistModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'playlist_id', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByPlaylist_id(List<PlaylistModel> objects) {
    return putAllByIndex(r'playlist_id', objects);
  }

  List<Id> putAllByPlaylist_idSync(List<PlaylistModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'playlist_id', objects, saveLinks: saveLinks);
  }
}

extension PlaylistModelQueryWhereSort
    on QueryBuilder<PlaylistModel, PlaylistModel, QWhere> {
  QueryBuilder<PlaylistModel, PlaylistModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PlaylistModelQueryWhere
    on QueryBuilder<PlaylistModel, PlaylistModel, QWhereClause> {
  QueryBuilder<PlaylistModel, PlaylistModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterWhereClause>
      playlist_idEqualTo(String playlist_id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'playlist_id',
        value: [playlist_id],
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterWhereClause>
      playlist_idNotEqualTo(String playlist_id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlist_id',
              lower: [],
              upper: [playlist_id],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlist_id',
              lower: [playlist_id],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlist_id',
              lower: [playlist_id],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'playlist_id',
              lower: [],
              upper: [playlist_id],
              includeUpper: false,
            ));
      }
    });
  }
}

extension PlaylistModelQueryFilter
    on QueryBuilder<PlaylistModel, PlaylistModel, QFilterCondition> {
  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      engagementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'engagement',
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      engagementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'engagement',
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      playlist_idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playlist_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      playlist_idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'playlist_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      playlist_idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'playlist_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      playlist_idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'playlist_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      playlist_idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'playlist_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      playlist_idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'playlist_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      playlist_idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'playlist_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      playlist_idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'playlist_id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      playlist_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playlist_id',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      playlist_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'playlist_id',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      thumbnailsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'thumbnails',
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      thumbnailsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'thumbnails',
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      titleEqualTo(
    String value, {
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      titleLessThan(
    String value, {
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      titleBetween(
    String lower,
    String upper, {
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      titleStartsWith(
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      titleEndsWith(
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

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      videoCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'videoCount',
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      videoCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'videoCount',
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      videoCountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'videoCount',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      videoCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'videoCount',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      videoCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'videoCount',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      videoCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'videoCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PlaylistModelQueryObject
    on QueryBuilder<PlaylistModel, PlaylistModel, QFilterCondition> {
  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition> engagement(
      FilterQuery<Engagement> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'engagement');
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition> thumbnails(
      FilterQuery<ThumbnailSet> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'thumbnails');
    });
  }
}

extension PlaylistModelQueryLinks
    on QueryBuilder<PlaylistModel, PlaylistModel, QFilterCondition> {
  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition> videos(
      FilterQuery<VideoModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'videos');
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      videosLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'videos', length, true, length, true);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      videosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'videos', 0, true, 0, true);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      videosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'videos', 0, false, 999999, true);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      videosLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'videos', 0, true, length, include);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      videosLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'videos', length, include, 999999, true);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterFilterCondition>
      videosLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'videos', lower, includeLower, upper, includeUpper);
    });
  }
}

extension PlaylistModelQuerySortBy
    on QueryBuilder<PlaylistModel, PlaylistModel, QSortBy> {
  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy> sortByPlaylist_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlist_id', Sort.asc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy>
      sortByPlaylist_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlist_id', Sort.desc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy> sortByVideoCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoCount', Sort.asc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy>
      sortByVideoCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoCount', Sort.desc);
    });
  }
}

extension PlaylistModelQuerySortThenBy
    on QueryBuilder<PlaylistModel, PlaylistModel, QSortThenBy> {
  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy> thenByPlaylist_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlist_id', Sort.asc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy>
      thenByPlaylist_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlist_id', Sort.desc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy> thenByVideoCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoCount', Sort.asc);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QAfterSortBy>
      thenByVideoCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoCount', Sort.desc);
    });
  }
}

extension PlaylistModelQueryWhereDistinct
    on QueryBuilder<PlaylistModel, PlaylistModel, QDistinct> {
  QueryBuilder<PlaylistModel, PlaylistModel, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QDistinct> distinctByPlaylist_id(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playlist_id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlaylistModel, PlaylistModel, QDistinct> distinctByVideoCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'videoCount');
    });
  }
}

extension PlaylistModelQueryProperty
    on QueryBuilder<PlaylistModel, PlaylistModel, QQueryProperty> {
  QueryBuilder<PlaylistModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PlaylistModel, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<PlaylistModel, Engagement?, QQueryOperations>
      engagementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'engagement');
    });
  }

  QueryBuilder<PlaylistModel, String, QQueryOperations> playlist_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playlist_id');
    });
  }

  QueryBuilder<PlaylistModel, ThumbnailSet?, QQueryOperations>
      thumbnailsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'thumbnails');
    });
  }

  QueryBuilder<PlaylistModel, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<PlaylistModel, int?, QQueryOperations> videoCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'videoCount');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaylistModelImpl _$$PlaylistModelImplFromJson(Map<String, dynamic> json) =>
    _$PlaylistModelImpl(
      id: (json['id'] as num?)?.toInt() ?? Isar.autoIncrement,
      title: json['title'] as String,
      playlist_id: json['playlist_id'] as String,
      description: json['description'] as String?,
      thumbnails: json['thumbnails'] == null
          ? null
          : ThumbnailSet.fromJson(json['thumbnails'] as Map<String, dynamic>),
      engagement: json['engagement'] == null
          ? null
          : Engagement.fromJson(json['engagement'] as Map<String, dynamic>),
      videoCount: (json['videoCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PlaylistModelImplToJson(_$PlaylistModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'playlist_id': instance.playlist_id,
      'description': instance.description,
      'thumbnails': instance.thumbnails,
      'engagement': instance.engagement,
      'videoCount': instance.videoCount,
    };
