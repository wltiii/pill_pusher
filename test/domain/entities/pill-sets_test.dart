import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:pill_pusher/domain/entities/pillbox.dart';
import 'package:pill_pusher/domain/entities/pillbox-container.dart';
import 'package:pill_pusher/domain/entities/test-data.dart';

void main() {
  test('instantiates a PillSets from default constructor', () {
    final pillSet = PillSet.fromJson(jsonDecode(singlePillSetJsonString));
    final pillSets = PillboxContainer('Coda', [pillSet]);

    expect(pillSets.dependent, equals('Coda'));
    expect(pillSets.sets.length, equals(1));
    expect(pillSets.sets.length, equals(1));
  });

  test('instantiates a PillSets from json with one set', () {
    final pillSets = PillboxContainer.fromJson(jsonDecode(dependentSinglePillSetsJsonString));

    expect(pillSets.dependent, equals('Coda'));
    expect(pillSets.sets.length, equals(1));
  });

  test('instantiates a PillSets with no dependent in json', () {
    final pillSets = PillboxContainer.fromJson(jsonDecode(noDependentSinglePillSetsJsonString));

    expect(pillSets.dependent, equals(''));
    expect(pillSets.sets.length, equals(1));
  });

  test('instantiates a PillSets from json with multiple sets', () {
    var jsonMap = jsonDecode(multiplePillSetsJsonString);
    final pillSets = PillboxContainer.fromJson(jsonMap);

    expect(pillSets.sets.length, equals(3));
  });
}
