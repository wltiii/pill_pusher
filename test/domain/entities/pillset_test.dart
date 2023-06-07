import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:pill_pusher/domain/entities/pill.dart';
import 'package:pill_pusher/domain/entities/pillbox.dart';
import 'package:pill_pusher/domain/entities/test_data.dart';

void main() {
  test('instantiates from parameterized constructor having required args only',
      () {
    const pillSet = PillSet.pillbox(name: 'Morning');

    expect(pillSet.name, equals('Morning'));
    expect(pillSet.frequency, equals(''));
    expect(pillSet.pills, equals([]));
    expect(pillSet.toString(), equals('PillSet(Morning, , [])'));
  });

  test('instantiates from parameterized constructor having all args', () {
    const pillSet = PillSet.pillbox(
        name: 'Morning',
        frequency: 'Daily',
        pills: [Pill(name: 'C'), Pill(name: 'D')]);

    expect(pillSet.name, equals('Morning'));
    expect(pillSet.frequency, equals('Daily'));
    expect(
        pillSet.pills, equals([const Pill(name: 'C'), const Pill(name: 'D')]));
    expect(pillSet.toString(),
        equals('PillSet(Morning, Daily, [Pill(C, ), Pill(D, )])'));
  });

  test('instantiates a PillSet from json', () {
    final Map<String, dynamic> jsonMap =
        json.decode(multiplePillSetsJsonString);
    // print(jsonMap['sets'][0]);
    final pillSet = PillSet.fromJson(jsonMap['sets'][0]);

    expect(pillSet.name, equals('Morning'));
    expect(pillSet.frequency, equals('Daily'));
    expect(
        pillSet.pills,
        equals([
          const Pill(name: 'C', dose: '1/2 of 500 mg - 250 mg'),
          const Pill(name: 'D3', dose: '50 mcg (2000 IU)'),
          const Pill(
              name: 'Fish Oil - Alaskan Omega-3', dose: '500 mg EPA DHA'),
          const Pill(name: 'Metformin Hcl Er 24Hr 500 Mg', dose: '500 Mg'),
          const Pill(name: 'Probiotic', dose: 'One capsule'),
          const Pill(name: 'Zinc', dose: '25 mg - 1/2 of 50 mg'),
          const Pill(name: 'Extra Virgin Olive Oil', dose: 'Two tablespoons'),
        ]));
    expect(pillSet.toString(), equals(// 1/2 of 500 mg - 250 mg
        'PillSet(Morning, Daily, [Pill(C, 1/2 of 500 mg - 250 mg), Pill(D3, 50 mcg (2000 IU)), Pill(Fish Oil - Alaskan Omega-3, 500 mg EPA DHA), Pill(Metformin Hcl Er 24Hr 500 Mg, 500 Mg), Pill(Probiotic, One capsule), Pill(Zinc, 25 mg - 1/2 of 50 mg), Pill(Extra Virgin Olive Oil, Two tablespoons)])'));
    // 'PillSet(Morning, Daily, [Pill(C, 250 mg - 1/2 of 500 mg), Pill(D3, 50 mcg (2000 IU)), Pill(Fish (Krill) Oil, 500 mg), Pill(Glipizide Er 24hr, 10 mg), Pill(Probiotic, One capsule), Pill(Zinc, 25 mg - 1/2 of 50 mg), Pill(Extra Virgin Olive Oil, Two tablespoons)])'));
  });
}
