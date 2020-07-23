import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:pill_pusher/features/schedule/data/models/pill_box_model.dart';
import 'package:pill_pusher/features/schedule/data/models/pill_model.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_box.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final pillBoxModel =
    PillBoxModel(name: 'Morning', frequency: "Daily", pills: [
      PillModel(name: "C"),
      PillModel(name: "D"),
      PillModel(name: "Fish (Krill) Oil"),
      PillModel(name: "Glipizide"),
      PillModel(name: "Probiotic"),
      PillModel(name: "Zinc"),
      PillModel(name: "Extra Virgin Olive Oil"),
    ]);

  group("construction", () {
    test('should be a subclass of PillBox entity', () async {
      expect(pillBoxModel, isA<PillBox>());
    });

    test('instantiates a PillBoxModel', () async {
      // given
      final pills = [
        "C",
        "D",
        "Fish (Krill) Oil",
        "Glipizide",
        "Probiotic",
        "Zinc",
        "Extra Virgin Olive Oil",
      ];

      expect(pillBoxModel, isA<PillBoxModel>());
      expect(pillBoxModel.name, equals('Morning'));
      expect(pillBoxModel.frequency, equals('Daily'));
      expect(pillBoxModel.pills.map((model) => model.name).toList(),
          equals(pills));
      expect(
          pillBoxModel.toString(),
          equals(
              "PillBoxModel(Morning, Daily, [PillModel(C), PillModel(D), PillModel(Fish (Krill) Oil), PillModel(Glipizide), PillModel(Probiotic), PillModel(Zinc), PillModel(Extra Virgin Olive Oil)])"));
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
      expect(result, pillBoxModel);
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
      final result = pillBoxModel.toJson();

      // then
      expect(result, expectedJsonMap);
    });
  });
}
