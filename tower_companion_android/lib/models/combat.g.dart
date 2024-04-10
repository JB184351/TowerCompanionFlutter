// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combat.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const CombatSchema = Schema(
  name: r'Combat',
  id: 7064975462770055284,
  properties: {
    r'hostilesEliminated': PropertySchema(
      id: 0,
      name: r'hostilesEliminated',
      type: IsarType.long,
    ),
    r'malformedHostilesEliminated': PropertySchema(
      id: 1,
      name: r'malformedHostilesEliminated',
      type: IsarType.long,
    ),
    r'meleeKills': PropertySchema(
      id: 2,
      name: r'meleeKills',
      type: IsarType.long,
    ),
    r'weakPointKills': PropertySchema(
      id: 3,
      name: r'weakPointKills',
      type: IsarType.long,
    )
  },
  estimateSize: _combatEstimateSize,
  serialize: _combatSerialize,
  deserialize: _combatDeserialize,
  deserializeProp: _combatDeserializeProp,
);

int _combatEstimateSize(
  Combat object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _combatSerialize(
  Combat object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hostilesEliminated);
  writer.writeLong(offsets[1], object.malformedHostilesEliminated);
  writer.writeLong(offsets[2], object.meleeKills);
  writer.writeLong(offsets[3], object.weakPointKills);
}

Combat _combatDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Combat();
  object.hostilesEliminated = reader.readLong(offsets[0]);
  object.malformedHostilesEliminated = reader.readLong(offsets[1]);
  object.meleeKills = reader.readLong(offsets[2]);
  object.weakPointKills = reader.readLong(offsets[3]);
  return object;
}

P _combatDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CombatQueryFilter on QueryBuilder<Combat, Combat, QFilterCondition> {
  QueryBuilder<Combat, Combat, QAfterFilterCondition> hostilesEliminatedEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hostilesEliminated',
        value: value,
      ));
    });
  }

  QueryBuilder<Combat, Combat, QAfterFilterCondition>
      hostilesEliminatedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hostilesEliminated',
        value: value,
      ));
    });
  }

  QueryBuilder<Combat, Combat, QAfterFilterCondition>
      hostilesEliminatedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hostilesEliminated',
        value: value,
      ));
    });
  }

  QueryBuilder<Combat, Combat, QAfterFilterCondition> hostilesEliminatedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hostilesEliminated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Combat, Combat, QAfterFilterCondition>
      malformedHostilesEliminatedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'malformedHostilesEliminated',
        value: value,
      ));
    });
  }

  QueryBuilder<Combat, Combat, QAfterFilterCondition>
      malformedHostilesEliminatedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'malformedHostilesEliminated',
        value: value,
      ));
    });
  }

  QueryBuilder<Combat, Combat, QAfterFilterCondition>
      malformedHostilesEliminatedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'malformedHostilesEliminated',
        value: value,
      ));
    });
  }

  QueryBuilder<Combat, Combat, QAfterFilterCondition>
      malformedHostilesEliminatedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'malformedHostilesEliminated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Combat, Combat, QAfterFilterCondition> meleeKillsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meleeKills',
        value: value,
      ));
    });
  }

  QueryBuilder<Combat, Combat, QAfterFilterCondition> meleeKillsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'meleeKills',
        value: value,
      ));
    });
  }

  QueryBuilder<Combat, Combat, QAfterFilterCondition> meleeKillsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'meleeKills',
        value: value,
      ));
    });
  }

  QueryBuilder<Combat, Combat, QAfterFilterCondition> meleeKillsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'meleeKills',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Combat, Combat, QAfterFilterCondition> weakPointKillsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weakPointKills',
        value: value,
      ));
    });
  }

  QueryBuilder<Combat, Combat, QAfterFilterCondition> weakPointKillsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weakPointKills',
        value: value,
      ));
    });
  }

  QueryBuilder<Combat, Combat, QAfterFilterCondition> weakPointKillsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weakPointKills',
        value: value,
      ));
    });
  }

  QueryBuilder<Combat, Combat, QAfterFilterCondition> weakPointKillsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weakPointKills',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CombatQueryObject on QueryBuilder<Combat, Combat, QFilterCondition> {}
