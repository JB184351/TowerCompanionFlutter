// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SkillSchema = Schema(
  name: r'Skill',
  id: 4092444674663721600,
  properties: {
    r'consecutivePerfectFloors': PropertySchema(
      id: 0,
      name: r'consecutivePerfectFloors',
      type: IsarType.long,
    ),
    r'midairMeleeKills': PropertySchema(
      id: 1,
      name: r'midairMeleeKills',
      type: IsarType.long,
    ),
    r'peakAdrenaline': PropertySchema(
      id: 2,
      name: r'peakAdrenaline',
      type: IsarType.double,
    ),
    r'perfectFloors': PropertySchema(
      id: 3,
      name: r'perfectFloors',
      type: IsarType.long,
    )
  },
  estimateSize: _skillEstimateSize,
  serialize: _skillSerialize,
  deserialize: _skillDeserialize,
  deserializeProp: _skillDeserializeProp,
);

int _skillEstimateSize(
  Skill object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _skillSerialize(
  Skill object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.consecutivePerfectFloors);
  writer.writeLong(offsets[1], object.midairMeleeKills);
  writer.writeDouble(offsets[2], object.peakAdrenaline);
  writer.writeLong(offsets[3], object.perfectFloors);
}

Skill _skillDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Skill();
  object.consecutivePerfectFloors = reader.readLong(offsets[0]);
  object.midairMeleeKills = reader.readLong(offsets[1]);
  object.peakAdrenaline = reader.readDouble(offsets[2]);
  object.perfectFloors = reader.readLong(offsets[3]);
  return object;
}

P _skillDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SkillQueryFilter on QueryBuilder<Skill, Skill, QFilterCondition> {
  QueryBuilder<Skill, Skill, QAfterFilterCondition>
      consecutivePerfectFloorsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'consecutivePerfectFloors',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition>
      consecutivePerfectFloorsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'consecutivePerfectFloors',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition>
      consecutivePerfectFloorsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'consecutivePerfectFloors',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition>
      consecutivePerfectFloorsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'consecutivePerfectFloors',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> midairMeleeKillsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'midairMeleeKills',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> midairMeleeKillsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'midairMeleeKills',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> midairMeleeKillsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'midairMeleeKills',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> midairMeleeKillsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'midairMeleeKills',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> peakAdrenalineEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'peakAdrenaline',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> peakAdrenalineGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'peakAdrenaline',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> peakAdrenalineLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'peakAdrenaline',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> peakAdrenalineBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'peakAdrenaline',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> perfectFloorsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'perfectFloors',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> perfectFloorsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'perfectFloors',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> perfectFloorsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'perfectFloors',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> perfectFloorsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'perfectFloors',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SkillQueryObject on QueryBuilder<Skill, Skill, QFilterCondition> {}
