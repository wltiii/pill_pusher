import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:pill_pusher/domain/entities/pill-set.dart';
import 'package:pill_pusher/domain/entities/pill-sets.dart';
import 'package:pill_pusher/domain/entities/test-data.dart';

void main() {
  test('instantiates a PillSets from default constructor', () {
    final pillSet = PillSet.fromJson(jsonDecode(singlePillSetJsonString));
    final pillSets = PillSets('Coda', [pillSet]);

    expect(pillSets.dependent, equals('Coda'));
    expect(pillSets.sets.length, equals(1));
    expect(pillSets.sets.length, equals(1));
  });

  test('instantiates a PillSets from json with one set', () {
    final pillSets = PillSets.fromJson(jsonDecode(dependentSinglePillSetsJsonString));

    expect(pillSets.dependent, equals('Coda'));
    expect(pillSets.sets.length, equals(1));
  });

  test('instantiates a PillSets with no dependent in json', () {
    final pillSets = PillSets.fromJson(jsonDecode(noDependentSinglePillSetsJsonString));

    expect(pillSets.dependent, equals(''));
    expect(pillSets.sets.length, equals(1));
  });

  test('instantiates a PillSets from json with multiple sets', () {
    var jsonMap = jsonDecode(multiplePillSetsJsonString);
    final pillSets = PillSets.fromJson(jsonMap);

    expect(pillSets.sets.length, equals(3));
  });
}
