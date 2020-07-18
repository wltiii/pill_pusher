import 'package:test/test.dart';
import 'package:pill_pusher/domain/pill-set.dart';
import 'package:pill_pusher/domain/test-data.dart';

void main() {
  test('instantiates a PillSet from default constructor', () {
    final pillSet = PillSet(
        'Morning',
        'Daily',
        [
          "C",
          "D",
          "Fish (Krill) Oil",
          "Glipizide",
          "Probiotic",
          "Zinc"
        ]
    );

    expect(pillSet.name, equals('Morning'));
    expect(pillSet.frequency, equals('Daily'));
    expect(pillSet.pills, equals([
      "C",
      "D",
      "Fish (Krill) Oil",
      "Glipizide",
      "Probiotic",
      "Zinc"
    ]));
  });

  test('instantiates a PillSet from json', () {
    final pillSet = PillSet.fromJson(morningPillsTestSet);

    expect(pillSet.name, equals('Morning'));
    expect(pillSet.frequency, equals('Daily'));
    expect(pillSet.pills, equals([
      "C",
      "D",
      "Fish (Krill) Oil",
      "Glipizide",
      "Probiotic",
      "Zinc"
    ]));
  });
}