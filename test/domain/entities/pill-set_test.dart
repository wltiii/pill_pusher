import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:pill_pusher/domain/entities/pill-set.dart';
import 'package:pill_pusher/domain/entities/pill.dart';
import 'package:pill_pusher/domain/entities/test-data.dart';

void main() {
  test('instantiates from parameterized constructor having required args only', () {
    final pillSet = PillSet(name: 'Morning');

    expect(pillSet.name, equals('Morning'));
    expect(pillSet.frequency, equals(''));
    expect(pillSet.pills, equals([]));
    expect(pillSet.toString(), equals('PillSet(Morning, , [])'));
  });

  test('instantiates from parameterized constructor having all args', () {
    final pillSet =
        PillSet(name: 'Morning', frequency: 'Daily', pills: [Pill(name: 'C'), Pill(name: 'D')]);

    expect(pillSet.name, equals('Morning'));
    expect(pillSet.frequency, equals('Daily'));
    expect(pillSet.pills, equals([Pill(name: 'C'), Pill(name: 'D')]));
    expect(pillSet.toString(), equals('PillSet(Morning, Daily, [Pill(C, ), Pill(D, )])'));
  });

  test('instantiates a PillSet from json', () {
    final Map<String, dynamic> jsonMap = json.decode(multiplePillSetsJsonString);
    print(jsonMap['sets'][0]);
    final pillSet = PillSet.fromJson(jsonMap['sets'][0]);

    expect(pillSet.name, equals('Morning'));
    expect(pillSet.frequency, equals('Daily'));
    expect(
        pillSet.pills,
        equals([
          Pill(name: 'C', dose: '250 mg - 1/2 of 500 mg'),
          Pill(name: 'D3', dose: '50 mcg (2000 IU)'),
          Pill(name: 'Fish (Krill) Oil', dose: '500 mg'),
          Pill(name: 'Glipizide Er 24hr', dose: '10 mg'),
          Pill(name: 'Probiotic', dose: 'One capsule'),
          Pill(name: 'Zinc', dose: '25 mg - 1/2 of 50 mg'),
          Pill(name: 'Extra Virgin Olive Oil', dose: 'Two tablespoons'),
        ]));
    expect(
        pillSet.toString(),
        equals(
            'PillSet(Morning, Daily, [Pill(C, 250 mg - 1/2 of 500 mg), Pill(D3, 50 mcg (2000 IU)), Pill(Fish (Krill) Oil, 500 mg), Pill(Glipizide Er 24hr, 10 mg), Pill(Probiotic, One capsule), Pill(Zinc, 25 mg - 1/2 of 50 mg), Pill(Extra Virgin Olive Oil, Two tablespoons)])'));
  });
}
