import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:pill_pusher/features/schedule/data/models/pill_box_model.dart';
import 'package:pill_pusher/features/schedule/data/models/pill_box_set_model.dart';
import 'package:pill_pusher/features/schedule/data/models/pill_model.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_box_set.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final pillBoxSetModel = PillBoxSetModel(
    caretaker: "Bill",
    dependent: "Coda",
    pillBoxes: [
      PillBoxModel(name: 'Morning', frequency: "Daily", pills: [
        PillModel(name: "Extra Virgin Olive Oil"),
      ]),
    ],
  );

  group("construction", () {
    test('should be a subclass of PillBoxSet entity', () async {
      expect(pillBoxSetModel, isA<PillBoxSet>());
    });

    test('instantiates a PillBoxSetModel', () async {
      // given
      final expectedPillBoxNames = [
        "Morning",
      ];
      final expectedPills = [
        "Extra Virgin Olive Oil",
      ];


      expect(pillBoxSetModel, isA<PillBoxSetModel>());
      expect(pillBoxSetModel.caretaker, equals('Bill'));
      expect(pillBoxSetModel.dependent, equals('Coda'));
      expect(pillBoxSetModel.pillBoxes.map((pillBox) => pillBox.name).toList(),
          equals(expectedPillBoxNames));
      expect(pillBoxSetModel.pillBoxes[0].pills.map((pillModels) => pillModels.name).toList(),
          equals(expectedPills));
      expect(
          pillBoxSetModel.toString(),
          equals(
              "PillBoxSetModel(Bill, Coda, [PillBoxModel(Morning, Daily, [PillModel(Extra Virgin Olive Oil)])])"));
    });
  });

  group("from JSON", () {
    test("instantiates object from JSON", () async {
      // given
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('pill_box.json'));

      // when
      final result = PillBoxModel.fromJson(jsonMap);

      // then
      expect(result, pillBoxSetModel);
    });
  });

  group("to JSON", () {
    test("instantiates JSON from object", () async {
      // given
      final expectedJsonMap = {
        "name": "Morning",
        "frequency": "Daily",
        "pills": [
          {"name": "C"},
          {"name": "D"},
          {"name": "Fish (Krill) Oil"},
          {"name": "Glipizide"},
          {"name": "Probiotic"},
          {"name": "Zinc"},
          {"name": "Extra Virgin Olive Oil"}
        ]
      };

      // when
      final result = pillBoxSetModel.toJson();

      // then
      expect(result, expectedJsonMap);
    });
  });
}
