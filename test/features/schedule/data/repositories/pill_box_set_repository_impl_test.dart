import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pill_pusher/features/schedule/data/models/pill_box_model.dart';
import 'package:pill_pusher/features/schedule/data/models/pill_box_set_model.dart';
import 'package:pill_pusher/features/schedule/data/models/pill_model.dart';
import 'package:pill_pusher/features/schedule/data/repositories/pill_box_set_repository_impl.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_box_set.dart';

void main() {
  PillBoxSetRepositoryImpl repository;

  setUp(() {
    // repository = PillBoxSetRepositoryImpl();
  });

  group('getPillBoxSet', () {
    test('returns PillBoxSet when found', () async {
      // given
      repository = PillBoxSetRepositoryImpl();

      final pillBoxSetModel = PillBoxSetModel(
        caretaker: "Bill",
        dependent: "Coda",
        pillBoxes: [
          PillBoxModel(name: 'Morning', frequency: "Daily", pills: [PillModel(name: "C")]),
        ],
      );

      final PillBoxSet pillBoxSet = pillBoxSetModel;
      // when
      final result = await repository.getByDependent('Coda');
      // then
      expect(result, equals(Right(pillBoxSet)));
    }, skip: 'not fully implemented');
  });
}
