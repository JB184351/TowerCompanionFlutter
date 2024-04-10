// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const StatsSchema = Schema(
  name: r'Stats',
  id: 6085053765032852394,
  properties: {
    r'altFireCooldown': PropertySchema(
      id: 0,
      name: r'altFireCooldown',
      type: IsarType.double,
    ),
    r'profieiency': PropertySchema(
      id: 1,
      name: r'profieiency',
      type: IsarType.double,
    ),
    r'protection': PropertySchema(
      id: 2,
      name: r'protection',
      type: IsarType.double,
    ),
    r'weaponDamage': PropertySchema(
      id: 3,
      name: r'weaponDamage',
      type: IsarType.double,
    )
  },
  estimateSize: _statsEstimateSize,
  serialize: _statsSerialize,
  deserialize: _statsDeserialize,
  deserializeProp: _statsDeserializeProp,
);

int _statsEstimateSize(
  Stats object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _statsSerialize(
  Stats object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.altFireCooldown);
  writer.writeDouble(offsets[1], object.profieiency);
  writer.writeDouble(offsets[2], object.protection);
  writer.writeDouble(offsets[3], object.weaponDamage);
}

Stats _statsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Stats();
  object.altFireCooldown = reader.readDouble(offsets[0]);
  object.profieiency = reader.readDouble(offsets[1]);
  object.protection = reader.readDouble(offsets[2]);
  object.weaponDamage = reader.readDouble(offsets[3]);
  return object;
}

P _statsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension StatsQueryFilter on QueryBuilder<Stats, Stats, QFilterCondition> {
  QueryBuilder<Stats, Stats, QAfterFilterCondition> altFireCooldownEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'altFireCooldown',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> altFireCooldownGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'altFireCooldown',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> altFireCooldownLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'altFireCooldown',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> altFireCooldownBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'altFireCooldown',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> profieiencyEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profieiency',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> profieiencyGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'profieiency',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> profieiencyLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'profieiency',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> profieiencyBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'profieiency',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> protectionEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'protection',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> protectionGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'protection',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> protectionLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'protection',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> protectionBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'protection',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> weaponDamageEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weaponDamage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> weaponDamageGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weaponDamage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> weaponDamageLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weaponDamage',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Stats, Stats, QAfterFilterCondition> weaponDamageBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weaponDamage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension StatsQueryObject on QueryBuilder<Stats, Stats, QFilterCondition> {}
