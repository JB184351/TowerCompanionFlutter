// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tower_run.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTowerRunCollection on Isar {
  IsarCollection<TowerRun> get towerRuns => this.collection();
}

const TowerRunSchema = CollectionSchema(
  name: r'TowerRun',
  id: 1190874602186405832,
  properties: {
    r'artifacts': PropertySchema(
      id: 0,
      name: r'artifacts',
      type: IsarType.objectList,
      target: r'Artifact',
    ),
    r'averageMultiplier': PropertySchema(
      id: 1,
      name: r'averageMultiplier',
      type: IsarType.double,
    ),
    r'combat': PropertySchema(
      id: 2,
      name: r'combat',
      type: IsarType.object,
      target: r'Combat',
    ),
    r'dateCompleted': PropertySchema(
      id: 3,
      name: r'dateCompleted',
      type: IsarType.dateTime,
    ),
    r'dateStarted': PropertySchema(
      id: 4,
      name: r'dateStarted',
      type: IsarType.dateTime,
    ),
    r'explorer': PropertySchema(
      id: 5,
      name: r'explorer',
      type: IsarType.object,
      target: r'Explorer',
    ),
    r'finalMultiplier': PropertySchema(
      id: 6,
      name: r'finalMultiplier',
      type: IsarType.double,
    ),
    r'highestMultiplier': PropertySchema(
      id: 7,
      name: r'highestMultiplier',
      type: IsarType.double,
    ),
    r'malfunctions': PropertySchema(
      id: 8,
      name: r'malfunctions',
      type: IsarType.objectList,
      target: r'Malfunction',
    ),
    r'objectives': PropertySchema(
      id: 9,
      name: r'objectives',
      type: IsarType.object,
      target: r'Objectives',
    ),
    r'parasites': PropertySchema(
      id: 10,
      name: r'parasites',
      type: IsarType.objectList,
      target: r'Parasite',
    ),
    r'phase': PropertySchema(
      id: 11,
      name: r'phase',
      type: IsarType.long,
    ),
    r'platform': PropertySchema(
      id: 12,
      name: r'platform',
      type: IsarType.string,
    ),
    r'room': PropertySchema(
      id: 13,
      name: r'room',
      type: IsarType.long,
    ),
    r'score': PropertySchema(
      id: 14,
      name: r'score',
      type: IsarType.long,
    ),
    r'scoutName': PropertySchema(
      id: 15,
      name: r'scoutName',
      type: IsarType.string,
    ),
    r'skill': PropertySchema(
      id: 16,
      name: r'skill',
      type: IsarType.object,
      target: r'Skill',
    ),
    r'stats': PropertySchema(
      id: 17,
      name: r'stats',
      type: IsarType.object,
      target: r'Stats',
    )
  },
  estimateSize: _towerRunEstimateSize,
  serialize: _towerRunSerialize,
  deserialize: _towerRunDeserialize,
  deserializeProp: _towerRunDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'Artifact': ArtifactSchema,
    r'Parasite': ParasiteSchema,
    r'Stats': StatsSchema,
    r'Malfunction': MalfunctionSchema,
    r'Combat': CombatSchema,
    r'Explorer': ExplorerSchema,
    r'Skill': SkillSchema,
    r'Objectives': ObjectivesSchema
  },
  getId: _towerRunGetId,
  getLinks: _towerRunGetLinks,
  attach: _towerRunAttach,
  version: '3.1.0+1',
);

int _towerRunEstimateSize(
  TowerRun object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.artifacts;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Artifact]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += ArtifactSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.combat;
    if (value != null) {
      bytesCount +=
          3 + CombatSchema.estimateSize(value, allOffsets[Combat]!, allOffsets);
    }
  }
  {
    final value = object.explorer;
    if (value != null) {
      bytesCount += 3 +
          ExplorerSchema.estimateSize(value, allOffsets[Explorer]!, allOffsets);
    }
  }
  {
    final list = object.malfunctions;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Malfunction]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              MalfunctionSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.objectives;
    if (value != null) {
      bytesCount += 3 +
          ObjectivesSchema.estimateSize(
              value, allOffsets[Objectives]!, allOffsets);
    }
  }
  {
    final list = object.parasites;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Parasite]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += ParasiteSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  bytesCount += 3 + object.platform.length * 3;
  bytesCount += 3 + object.scoutName.length * 3;
  {
    final value = object.skill;
    if (value != null) {
      bytesCount +=
          3 + SkillSchema.estimateSize(value, allOffsets[Skill]!, allOffsets);
    }
  }
  bytesCount += 3 +
      StatsSchema.estimateSize(object.stats, allOffsets[Stats]!, allOffsets);
  return bytesCount;
}

void _towerRunSerialize(
  TowerRun object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<Artifact>(
    offsets[0],
    allOffsets,
    ArtifactSchema.serialize,
    object.artifacts,
  );
  writer.writeDouble(offsets[1], object.averageMultiplier);
  writer.writeObject<Combat>(
    offsets[2],
    allOffsets,
    CombatSchema.serialize,
    object.combat,
  );
  writer.writeDateTime(offsets[3], object.dateCompleted);
  writer.writeDateTime(offsets[4], object.dateStarted);
  writer.writeObject<Explorer>(
    offsets[5],
    allOffsets,
    ExplorerSchema.serialize,
    object.explorer,
  );
  writer.writeDouble(offsets[6], object.finalMultiplier);
  writer.writeDouble(offsets[7], object.highestMultiplier);
  writer.writeObjectList<Malfunction>(
    offsets[8],
    allOffsets,
    MalfunctionSchema.serialize,
    object.malfunctions,
  );
  writer.writeObject<Objectives>(
    offsets[9],
    allOffsets,
    ObjectivesSchema.serialize,
    object.objectives,
  );
  writer.writeObjectList<Parasite>(
    offsets[10],
    allOffsets,
    ParasiteSchema.serialize,
    object.parasites,
  );
  writer.writeLong(offsets[11], object.phase);
  writer.writeString(offsets[12], object.platform);
  writer.writeLong(offsets[13], object.room);
  writer.writeLong(offsets[14], object.score);
  writer.writeString(offsets[15], object.scoutName);
  writer.writeObject<Skill>(
    offsets[16],
    allOffsets,
    SkillSchema.serialize,
    object.skill,
  );
  writer.writeObject<Stats>(
    offsets[17],
    allOffsets,
    StatsSchema.serialize,
    object.stats,
  );
}

TowerRun _towerRunDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TowerRun();
  object.artifacts = reader.readObjectList<Artifact>(
    offsets[0],
    ArtifactSchema.deserialize,
    allOffsets,
    Artifact(),
  );
  object.averageMultiplier = reader.readDouble(offsets[1]);
  object.combat = reader.readObjectOrNull<Combat>(
    offsets[2],
    CombatSchema.deserialize,
    allOffsets,
  );
  object.dateCompleted = reader.readDateTime(offsets[3]);
  object.dateStarted = reader.readDateTime(offsets[4]);
  object.explorer = reader.readObjectOrNull<Explorer>(
    offsets[5],
    ExplorerSchema.deserialize,
    allOffsets,
  );
  object.finalMultiplier = reader.readDouble(offsets[6]);
  object.highestMultiplier = reader.readDouble(offsets[7]);
  object.id = id;
  object.malfunctions = reader.readObjectList<Malfunction>(
    offsets[8],
    MalfunctionSchema.deserialize,
    allOffsets,
    Malfunction(),
  );
  object.objectives = reader.readObjectOrNull<Objectives>(
    offsets[9],
    ObjectivesSchema.deserialize,
    allOffsets,
  );
  object.parasites = reader.readObjectList<Parasite>(
    offsets[10],
    ParasiteSchema.deserialize,
    allOffsets,
    Parasite(),
  );
  object.phase = reader.readLong(offsets[11]);
  object.platform = reader.readString(offsets[12]);
  object.room = reader.readLong(offsets[13]);
  object.score = reader.readLong(offsets[14]);
  object.scoutName = reader.readString(offsets[15]);
  object.skill = reader.readObjectOrNull<Skill>(
    offsets[16],
    SkillSchema.deserialize,
    allOffsets,
  );
  object.stats = reader.readObjectOrNull<Stats>(
        offsets[17],
        StatsSchema.deserialize,
        allOffsets,
      ) ??
      Stats();
  return object;
}

P _towerRunDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<Artifact>(
        offset,
        ArtifactSchema.deserialize,
        allOffsets,
        Artifact(),
      )) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<Combat>(
        offset,
        CombatSchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readObjectOrNull<Explorer>(
        offset,
        ExplorerSchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    case 8:
      return (reader.readObjectList<Malfunction>(
        offset,
        MalfunctionSchema.deserialize,
        allOffsets,
        Malfunction(),
      )) as P;
    case 9:
      return (reader.readObjectOrNull<Objectives>(
        offset,
        ObjectivesSchema.deserialize,
        allOffsets,
      )) as P;
    case 10:
      return (reader.readObjectList<Parasite>(
        offset,
        ParasiteSchema.deserialize,
        allOffsets,
        Parasite(),
      )) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readObjectOrNull<Skill>(
        offset,
        SkillSchema.deserialize,
        allOffsets,
      )) as P;
    case 17:
      return (reader.readObjectOrNull<Stats>(
            offset,
            StatsSchema.deserialize,
            allOffsets,
          ) ??
          Stats()) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _towerRunGetId(TowerRun object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _towerRunGetLinks(TowerRun object) {
  return [];
}

void _towerRunAttach(IsarCollection<dynamic> col, Id id, TowerRun object) {
  object.id = id;
}

extension TowerRunQueryWhereSort on QueryBuilder<TowerRun, TowerRun, QWhere> {
  QueryBuilder<TowerRun, TowerRun, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TowerRunQueryWhere on QueryBuilder<TowerRun, TowerRun, QWhereClause> {
  QueryBuilder<TowerRun, TowerRun, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TowerRun, TowerRun, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterWhereClause> idBetween(
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

extension TowerRunQueryFilter
    on QueryBuilder<TowerRun, TowerRun, QFilterCondition> {
  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> artifactsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'artifacts',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> artifactsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'artifacts',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      artifactsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artifacts',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> artifactsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artifacts',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      artifactsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artifacts',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      artifactsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artifacts',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      artifactsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artifacts',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      artifactsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artifacts',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      averageMultiplierEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'averageMultiplier',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      averageMultiplierGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'averageMultiplier',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      averageMultiplierLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'averageMultiplier',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      averageMultiplierBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'averageMultiplier',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> combatIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'combat',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> combatIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'combat',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> dateCompletedEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      dateCompletedGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> dateCompletedLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> dateCompletedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateCompleted',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> dateStartedEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateStarted',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      dateStartedGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateStarted',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> dateStartedLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateStarted',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> dateStartedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateStarted',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> explorerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'explorer',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> explorerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'explorer',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      finalMultiplierEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finalMultiplier',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      finalMultiplierGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'finalMultiplier',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      finalMultiplierLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'finalMultiplier',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      finalMultiplierBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'finalMultiplier',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      highestMultiplierEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'highestMultiplier',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      highestMultiplierGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'highestMultiplier',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      highestMultiplierLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'highestMultiplier',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      highestMultiplierBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'highestMultiplier',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> malfunctionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'malfunctions',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      malfunctionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'malfunctions',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      malfunctionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'malfunctions',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      malfunctionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'malfunctions',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      malfunctionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'malfunctions',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      malfunctionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'malfunctions',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      malfunctionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'malfunctions',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      malfunctionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'malfunctions',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> objectivesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objectives',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      objectivesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objectives',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> parasitesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'parasites',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> parasitesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'parasites',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      parasitesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'parasites',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> parasitesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'parasites',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      parasitesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'parasites',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      parasitesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'parasites',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      parasitesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'parasites',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      parasitesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'parasites',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> phaseEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phase',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> phaseGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phase',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> phaseLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phase',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> phaseBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phase',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> platformEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'platform',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> platformGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'platform',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> platformLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'platform',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> platformBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'platform',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> platformStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'platform',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> platformEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'platform',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> platformContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'platform',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> platformMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'platform',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> platformIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'platform',
        value: '',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> platformIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'platform',
        value: '',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> roomEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'room',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> roomGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'room',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> roomLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'room',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> roomBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'room',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> scoreEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'score',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> scoreGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'score',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> scoreLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'score',
        value: value,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> scoreBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'score',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> scoutNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scoutName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> scoutNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scoutName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> scoutNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scoutName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> scoutNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scoutName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> scoutNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'scoutName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> scoutNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'scoutName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> scoutNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'scoutName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> scoutNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'scoutName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> scoutNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scoutName',
        value: '',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition>
      scoutNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'scoutName',
        value: '',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> skillIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'skill',
      ));
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> skillIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'skill',
      ));
    });
  }
}

extension TowerRunQueryObject
    on QueryBuilder<TowerRun, TowerRun, QFilterCondition> {
  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> artifactsElement(
      FilterQuery<Artifact> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'artifacts');
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> combat(
      FilterQuery<Combat> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'combat');
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> explorer(
      FilterQuery<Explorer> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'explorer');
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> malfunctionsElement(
      FilterQuery<Malfunction> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'malfunctions');
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> objectives(
      FilterQuery<Objectives> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'objectives');
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> parasitesElement(
      FilterQuery<Parasite> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'parasites');
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> skill(
      FilterQuery<Skill> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'skill');
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterFilterCondition> stats(
      FilterQuery<Stats> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'stats');
    });
  }
}

extension TowerRunQueryLinks
    on QueryBuilder<TowerRun, TowerRun, QFilterCondition> {}

extension TowerRunQuerySortBy on QueryBuilder<TowerRun, TowerRun, QSortBy> {
  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByAverageMultiplier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageMultiplier', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByAverageMultiplierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageMultiplier', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByDateCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCompleted', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByDateCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCompleted', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByDateStarted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateStarted', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByDateStartedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateStarted', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByFinalMultiplier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalMultiplier', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByFinalMultiplierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalMultiplier', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByHighestMultiplier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highestMultiplier', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByHighestMultiplierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highestMultiplier', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByPhase() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phase', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByPhaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phase', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByPlatform() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'platform', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByPlatformDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'platform', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByRoom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'room', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByRoomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'room', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByScoutName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scoutName', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> sortByScoutNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scoutName', Sort.desc);
    });
  }
}

extension TowerRunQuerySortThenBy
    on QueryBuilder<TowerRun, TowerRun, QSortThenBy> {
  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByAverageMultiplier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageMultiplier', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByAverageMultiplierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'averageMultiplier', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByDateCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCompleted', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByDateCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCompleted', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByDateStarted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateStarted', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByDateStartedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateStarted', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByFinalMultiplier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalMultiplier', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByFinalMultiplierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalMultiplier', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByHighestMultiplier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highestMultiplier', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByHighestMultiplierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highestMultiplier', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByPhase() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phase', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByPhaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phase', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByPlatform() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'platform', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByPlatformDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'platform', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByRoom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'room', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByRoomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'room', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.desc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByScoutName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scoutName', Sort.asc);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QAfterSortBy> thenByScoutNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scoutName', Sort.desc);
    });
  }
}

extension TowerRunQueryWhereDistinct
    on QueryBuilder<TowerRun, TowerRun, QDistinct> {
  QueryBuilder<TowerRun, TowerRun, QDistinct> distinctByAverageMultiplier() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'averageMultiplier');
    });
  }

  QueryBuilder<TowerRun, TowerRun, QDistinct> distinctByDateCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCompleted');
    });
  }

  QueryBuilder<TowerRun, TowerRun, QDistinct> distinctByDateStarted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateStarted');
    });
  }

  QueryBuilder<TowerRun, TowerRun, QDistinct> distinctByFinalMultiplier() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'finalMultiplier');
    });
  }

  QueryBuilder<TowerRun, TowerRun, QDistinct> distinctByHighestMultiplier() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'highestMultiplier');
    });
  }

  QueryBuilder<TowerRun, TowerRun, QDistinct> distinctByPhase() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phase');
    });
  }

  QueryBuilder<TowerRun, TowerRun, QDistinct> distinctByPlatform(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'platform', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TowerRun, TowerRun, QDistinct> distinctByRoom() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'room');
    });
  }

  QueryBuilder<TowerRun, TowerRun, QDistinct> distinctByScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'score');
    });
  }

  QueryBuilder<TowerRun, TowerRun, QDistinct> distinctByScoutName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'scoutName', caseSensitive: caseSensitive);
    });
  }
}

extension TowerRunQueryProperty
    on QueryBuilder<TowerRun, TowerRun, QQueryProperty> {
  QueryBuilder<TowerRun, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TowerRun, List<Artifact>?, QQueryOperations>
      artifactsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'artifacts');
    });
  }

  QueryBuilder<TowerRun, double, QQueryOperations> averageMultiplierProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'averageMultiplier');
    });
  }

  QueryBuilder<TowerRun, Combat?, QQueryOperations> combatProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'combat');
    });
  }

  QueryBuilder<TowerRun, DateTime, QQueryOperations> dateCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCompleted');
    });
  }

  QueryBuilder<TowerRun, DateTime, QQueryOperations> dateStartedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateStarted');
    });
  }

  QueryBuilder<TowerRun, Explorer?, QQueryOperations> explorerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'explorer');
    });
  }

  QueryBuilder<TowerRun, double, QQueryOperations> finalMultiplierProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'finalMultiplier');
    });
  }

  QueryBuilder<TowerRun, double, QQueryOperations> highestMultiplierProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'highestMultiplier');
    });
  }

  QueryBuilder<TowerRun, List<Malfunction>?, QQueryOperations>
      malfunctionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'malfunctions');
    });
  }

  QueryBuilder<TowerRun, Objectives?, QQueryOperations> objectivesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objectives');
    });
  }

  QueryBuilder<TowerRun, List<Parasite>?, QQueryOperations>
      parasitesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parasites');
    });
  }

  QueryBuilder<TowerRun, int, QQueryOperations> phaseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phase');
    });
  }

  QueryBuilder<TowerRun, String, QQueryOperations> platformProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'platform');
    });
  }

  QueryBuilder<TowerRun, int, QQueryOperations> roomProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'room');
    });
  }

  QueryBuilder<TowerRun, int, QQueryOperations> scoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'score');
    });
  }

  QueryBuilder<TowerRun, String, QQueryOperations> scoutNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scoutName');
    });
  }

  QueryBuilder<TowerRun, Skill?, QQueryOperations> skillProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'skill');
    });
  }

  QueryBuilder<TowerRun, Stats, QQueryOperations> statsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stats');
    });
  }
}
