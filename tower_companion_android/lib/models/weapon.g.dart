// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const WeaponSchema = Schema(
  name: r'Weapon',
  id: -7996961866191931403,
  properties: {
    r'altFire': PropertySchema(
      id: 0,
      name: r'altFire',
      type: IsarType.object,
      target: r'AltFire',
    ),
    r'level': PropertySchema(
      id: 1,
      name: r'level',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'traits': PropertySchema(
      id: 3,
      name: r'traits',
      type: IsarType.objectList,
      target: r'Trait',
    )
  },
  estimateSize: _weaponEstimateSize,
  serialize: _weaponSerialize,
  deserialize: _weaponDeserialize,
  deserializeProp: _weaponDeserializeProp,
);

int _weaponEstimateSize(
  Weapon object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      AltFireSchema.estimateSize(
          object.altFire, allOffsets[AltFire]!, allOffsets);
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.traits.length * 3;
  {
    final offsets = allOffsets[Trait]!;
    for (var i = 0; i < object.traits.length; i++) {
      final value = object.traits[i];
      bytesCount += TraitSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _weaponSerialize(
  Weapon object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<AltFire>(
    offsets[0],
    allOffsets,
    AltFireSchema.serialize,
    object.altFire,
  );
  writer.writeLong(offsets[1], object.level);
  writer.writeString(offsets[2], object.name);
  writer.writeObjectList<Trait>(
    offsets[3],
    allOffsets,
    TraitSchema.serialize,
    object.traits,
  );
}

Weapon _weaponDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Weapon();
  object.altFire = reader.readObjectOrNull<AltFire>(
        offsets[0],
        AltFireSchema.deserialize,
        allOffsets,
      ) ??
      AltFire();
  object.level = reader.readLong(offsets[1]);
  object.name = reader.readString(offsets[2]);
  object.traits = reader.readObjectList<Trait>(
        offsets[3],
        TraitSchema.deserialize,
        allOffsets,
        Trait(),
      ) ??
      [];
  return object;
}

P _weaponDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<AltFire>(
            offset,
            AltFireSchema.deserialize,
            allOffsets,
          ) ??
          AltFire()) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readObjectList<Trait>(
            offset,
            TraitSchema.deserialize,
            allOffsets,
            Trait(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension WeaponQueryFilter on QueryBuilder<Weapon, Weapon, QFilterCondition> {
  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> levelEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> levelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> levelLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> levelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'level',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> traitsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'traits',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> traitsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'traits',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> traitsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'traits',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> traitsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'traits',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> traitsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'traits',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> traitsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'traits',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension WeaponQueryObject on QueryBuilder<Weapon, Weapon, QFilterCondition> {
  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> altFire(
      FilterQuery<AltFire> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'altFire');
    });
  }

  QueryBuilder<Weapon, Weapon, QAfterFilterCondition> traitsElement(
      FilterQuery<Trait> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'traits');
    });
  }
}
