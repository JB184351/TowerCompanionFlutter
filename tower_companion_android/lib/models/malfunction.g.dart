// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'malfunction.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MalfunctionSchema = Schema(
  name: r'Malfunction',
  id: 8696520918817824474,
  properties: {
    r'conditionToRemove': PropertySchema(
      id: 0,
      name: r'conditionToRemove',
      type: IsarType.string,
    ),
    r'malfunctionDescription': PropertySchema(
      id: 1,
      name: r'malfunctionDescription',
      type: IsarType.string,
    ),
    r'malfunctionType': PropertySchema(
      id: 2,
      name: r'malfunctionType',
      type: IsarType.byte,
      enumMap: _MalfunctionmalfunctionTypeEnumValueMap,
    )
  },
  estimateSize: _malfunctionEstimateSize,
  serialize: _malfunctionSerialize,
  deserialize: _malfunctionDeserialize,
  deserializeProp: _malfunctionDeserializeProp,
);

int _malfunctionEstimateSize(
  Malfunction object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.conditionToRemove;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.malfunctionDescription.length * 3;
  return bytesCount;
}

void _malfunctionSerialize(
  Malfunction object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.conditionToRemove);
  writer.writeString(offsets[1], object.malfunctionDescription);
  writer.writeByte(offsets[2], object.malfunctionType.index);
}

Malfunction _malfunctionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Malfunction();
  object.conditionToRemove = reader.readStringOrNull(offsets[0]);
  object.malfunctionDescription = reader.readString(offsets[1]);
  object.malfunctionType = _MalfunctionmalfunctionTypeValueEnumMap[
          reader.readByteOrNull(offsets[2])] ??
      MalfunctionType.normal;
  return object;
}

P _malfunctionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (_MalfunctionmalfunctionTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          MalfunctionType.normal) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _MalfunctionmalfunctionTypeEnumValueMap = {
  'normal': 0,
  'permanent': 1,
};
const _MalfunctionmalfunctionTypeValueEnumMap = {
  0: MalfunctionType.normal,
  1: MalfunctionType.permanent,
};

extension MalfunctionQueryFilter
    on QueryBuilder<Malfunction, Malfunction, QFilterCondition> {
  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      conditionToRemoveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'conditionToRemove',
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      conditionToRemoveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'conditionToRemove',
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      conditionToRemoveEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'conditionToRemove',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      conditionToRemoveGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'conditionToRemove',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      conditionToRemoveLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'conditionToRemove',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      conditionToRemoveBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'conditionToRemove',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      conditionToRemoveStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'conditionToRemove',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      conditionToRemoveEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'conditionToRemove',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      conditionToRemoveContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'conditionToRemove',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      conditionToRemoveMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'conditionToRemove',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      conditionToRemoveIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'conditionToRemove',
        value: '',
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      conditionToRemoveIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'conditionToRemove',
        value: '',
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      malfunctionDescriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'malfunctionDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      malfunctionDescriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'malfunctionDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      malfunctionDescriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'malfunctionDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      malfunctionDescriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'malfunctionDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      malfunctionDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'malfunctionDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      malfunctionDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'malfunctionDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      malfunctionDescriptionContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'malfunctionDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      malfunctionDescriptionMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'malfunctionDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      malfunctionDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'malfunctionDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      malfunctionDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'malfunctionDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      malfunctionTypeEqualTo(MalfunctionType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'malfunctionType',
        value: value,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      malfunctionTypeGreaterThan(
    MalfunctionType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'malfunctionType',
        value: value,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      malfunctionTypeLessThan(
    MalfunctionType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'malfunctionType',
        value: value,
      ));
    });
  }

  QueryBuilder<Malfunction, Malfunction, QAfterFilterCondition>
      malfunctionTypeBetween(
    MalfunctionType lower,
    MalfunctionType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'malfunctionType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MalfunctionQueryObject
    on QueryBuilder<Malfunction, Malfunction, QFilterCondition> {}
