import 'package:test/test.dart';
import 'package:pill_pusher/domain/pill-set.dart';
import 'package:pill_pusher/domain/pill-sets.dart';
import 'package:pill_pusher/domain/test-data.dart';

void main() {

  test('instantiates a PillSets from default constructor', ()
  {
    final pillSet = PillSet.fromJson(morningPillsTestSet);
    final pillSets = PillSets('Coda', [pillSet]);

    expect(pillSets.dependent, equals('Coda'));
    expect(pillSets.sets.length, equals(1));
  });

  test('instantiates a PillSets from json with one set', ()
  {
    final pillSets = PillSets.fromJson(testPillSetsHavingOneSet);

    expect(pillSets.dependent, equals('Coda'));
    expect(pillSets.sets.length, equals(1));
  });

  test('instantiates a PillSets with no dependent in json', ()
  {
    final pillSets = PillSets.fromJson(testPillSetsNoDependent);

    expect(pillSets.dependent, equals(null));
    expect(pillSets.sets.length, equals(1));
  });

  test('instantiates a PillSets from json with multiple sets', ()
  {
    final pillSets = PillSets.fromJson(testPillSets);

    expect(pillSets.sets.length, equals(3));
  });
}