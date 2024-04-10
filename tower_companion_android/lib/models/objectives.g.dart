// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'objectives.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ObjectivesSchema = Schema(
  name: r'Objectives',
  id: -7222874069086891564,
  properties: {
    r'algosDefeated': PropertySchema(
      id: 0,
      name: r'algosDefeated',
      type: IsarType.long,
    ),
    r'algosFinalFormedDefeated': PropertySchema(
      id: 1,
      name: r'algosFinalFormedDefeated',
      type: IsarType.long,
    ),
    r'algosInfinityFormDefeated': PropertySchema(
      id: 2,
      name: r'algosInfinityFormDefeated',
      type: IsarType.long,
    ),
    r'pylioidsEliminated': PropertySchema(
      id: 3,
      name: r'pylioidsEliminated',
      type: IsarType.long,
    )
  },
  estimateSize: _objectivesEstimateSize,
  serialize: _objectivesSerialize,
  deserialize: _objectivesDeserialize,
  deserializeProp: _objectivesDeserializeProp,
);

int _objectivesEstimateSize(
  Objectives object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _objectivesSerialize(
  Objectives object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.algosDefeated);
  writer.writeLong(offsets[1], object.algosFinalFormedDefeated);
  writer.writeLong(offsets[2], object.algosInfinityFormDefeated);
  writer.writeLong(offsets[3], object.pylioidsEliminated);
}

Objectives _objectivesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Objectives();
  object.algosDefeated = reader.readLong(offsets[0]);
  object.algosFinalFormedDefeated = reader.readLong(offsets[1]);
  object.algosInfinityFormDefeated = reader.readLong(offsets[2]);
  object.pylioidsEliminated = reader.readLong(offsets[3]);
  return object;
}

P _objectivesDeserializeProp<P>(
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

extension ObjectivesQueryFilter
    on QueryBuilder<Objectives, Objectives, QFilterCondition> {
  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      algosDefeatedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'algosDefeated',
        value: value,
      ));
    });
  }

  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      algosDefeatedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'algosDefeated',
        value: value,
      ));
    });
  }

  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      algosDefeatedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'algosDefeated',
        value: value,
      ));
    });
  }

  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      algosDefeatedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'algosDefeated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      algosFinalFormedDefeatedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'algosFinalFormedDefeated',
        value: value,
      ));
    });
  }

  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      algosFinalFormedDefeatedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'algosFinalFormedDefeated',
        value: value,
      ));
    });
  }

  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      algosFinalFormedDefeatedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'algosFinalFormedDefeated',
        value: value,
      ));
    });
  }

  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      algosFinalFormedDefeatedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'algosFinalFormedDefeated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      algosInfinityFormDefeatedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'algosInfinityFormDefeated',
        value: value,
      ));
    });
  }

  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      algosInfinityFormDefeatedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'algosInfinityFormDefeated',
        value: value,
      ));
    });
  }

  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      algosInfinityFormDefeatedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'algosInfinityFormDefeated',
        value: value,
      ));
    });
  }

  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      algosInfinityFormDefeatedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'algosInfinityFormDefeated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      pylioidsEliminatedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pylioidsEliminated',
        value: value,
      ));
    });
  }

  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      pylioidsEliminatedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pylioidsEliminated',
        value: value,
      ));
    });
  }

  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      pylioidsEliminatedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pylioidsEliminated',
        value: value,
      ));
    });
  }

  QueryBuilder<Objectives, Objectives, QAfterFilterCondition>
      pylioidsEliminatedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pylioidsEliminated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ObjectivesQueryObject
    on QueryBuilder<Objectives, Objectives, QFilterCondition> {}
