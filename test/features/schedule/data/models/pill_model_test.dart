import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';

import 'package:pill_pusher/features/schedule/domain/entities/pill.dart';
import 'package:pill_pusher/features/schedule/data/models/pill_model.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final pillModel = PillModel(name: 'Extra Virgin Olive Oil');

  group("construction", () {
    test('should be a subclass of Pill entity', () async {
      expect(pillModel, isA<Pill>());
    });

    test('instantiates a PillModel', () async {
      expect(pillModel.name, equals('Extra Virgin Olive Oil'));
      expect(pillModel.toString(), equals("PillModel(Extra Virgin Olive Oil)"));
    });
  });

  group("from JSON", () {
    test("instantiates object from JSON", () async {
      // given
      final Map<String, dynamic> jsonMap = json.decode(fixture('pill.json'));

      // when
      final result = PillModel.fromJson(jsonMap);

      // then
      expect(result, pillModel);
    });

  });

  group("to JSON", () {
    test("instantiates JSON from object", () async {
      // given
      final expectedJsonMap = {
        "name": "Extra Virgin Olive Oil",
      };

      // when
      final result = pillModel.toJson();

      // then
      expect(result, expectedJsonMap);
    });
  });
}