// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explorer.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ExplorerSchema = Schema(
  name: r'Explorer',
  id: -2217038634867894781,
  properties: {
    r'calibratorsCollected': PropertySchema(
      id: 0,
      name: r'calibratorsCollected',
      type: IsarType.long,
    ),
    r'floorsCleared': PropertySchema(
      id: 1,
      name: r'floorsCleared',
      type: IsarType.long,
    ),
    r'obolitesCollected': PropertySchema(
      id: 2,
      name: r'obolitesCollected',
      type: IsarType.long,
    ),
    r'silphiumFound': PropertySchema(
      id: 3,
      name: r'silphiumFound',
      type: IsarType.long,
    )
  },
  estimateSize: _explorerEstimateSize,
  serialize: _explorerSerialize,
  deserialize: _explorerDeserialize,
  deserializeProp: _explorerDeserializeProp,
);

int _explorerEstimateSize(
  Explorer object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _explorerSerialize(
  Explorer object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.calibratorsCollected);
  writer.writeLong(offsets[1], object.floorsCleared);
  writer.writeLong(offsets[2], object.obolitesCollected);
  writer.writeLong(offsets[3], object.silphiumFound);
}

Explorer _explorerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Explorer();
  object.calibratorsCollected = reader.readLong(offsets[0]);
  object.floorsCleared = reader.readLong(offsets[1]);
  object.obolitesCollected = reader.readLong(offsets[2]);
  object.silphiumFound = reader.readLong(offsets[3]);
  return object;
}

P _explorerDeserializeProp<P>(
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

extension ExplorerQueryFilter
    on QueryBuilder<Explorer, Explorer, QFilterCondition> {
  QueryBuilder<Explorer, Explorer, QAfterFilterCondition>
      calibratorsCollectedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calibratorsCollected',
        value: value,
      ));
    });
  }

  QueryBuilder<Explorer, Explorer, QAfterFilterCondition>
      calibratorsCollectedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'calibratorsCollected',
        value: value,
      ));
    });
  }

  QueryBuilder<Explorer, Explorer, QAfterFilterCondition>
      calibratorsCollectedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'calibratorsCollected',
        value: value,
      ));
    });
  }

  QueryBuilder<Explorer, Explorer, QAfterFilterCondition>
      calibratorsCollectedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'calibratorsCollected',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Explorer, Explorer, QAfterFilterCondition> floorsClearedEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'floorsCleared',
        value: value,
      ));
    });
  }

  QueryBuilder<Explorer, Explorer, QAfterFilterCondition>
      floorsClearedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'floorsCleared',
        value: value,
      ));
    });
  }

  QueryBuilder<Explorer, Explorer, QAfterFilterCondition> floorsClearedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'floorsCleared',
        value: value,
      ));
    });
  }

  QueryBuilder<Explorer, Explorer, QAfterFilterCondition> floorsClearedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'floorsCleared',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Explorer, Explorer, QAfterFilterCondition>
      obolitesCollectedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'obolitesCollected',
        value: value,
      ));
    });
  }

  QueryBuilder<Explorer, Explorer, QAfterFilterCondition>
      obolitesCollectedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'obolitesCollected',
        value: value,
      ));
    });
  }

  QueryBuilder<Explorer, Explorer, QAfterFilterCondition>
      obolitesCollectedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'obolitesCollected',
        value: value,
      ));
    });
  }

  QueryBuilder<Explorer, Explorer, QAfterFilterCondition>
      obolitesCollectedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'obolitesCollected',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Explorer, Explorer, QAfterFilterCondition> silphiumFoundEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'silphiumFound',
        value: value,
      ));
    });
  }

  QueryBuilder<Explorer, Explorer, QAfterFilterCondition>
      silphiumFoundGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'silphiumFound',
        value: value,
      ));
    });
  }

  QueryBuilder<Explorer, Explorer, QAfterFilterCondition> silphiumFoundLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'silphiumFound',
        value: value,
      ));
    });
  }

  QueryBuilder<Explorer, Explorer, QAfterFilterCondition> silphiumFoundBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'silphiumFound',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ExplorerQueryObject
    on QueryBuilder<Explorer, Explorer, QFilterCondition> {}
