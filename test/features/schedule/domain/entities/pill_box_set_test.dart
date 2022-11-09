import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_box.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_box_set.dart';

void main() {
  final pillBox = PillBox(name: 'Morning', frequency: 'Daily', pills: [
    Pill(name: "Extra Virgin Olive Oil"),
  ]);

  final pillBoxSet = PillBoxSet(caretaker: "Bill", dependent: 'Coda', pillBoxes: [pillBox]);

  group("construction", () {
    test('should be a subclass of Equatable entity', () async {
      expect(pillBoxSet, isA<Equatable>());
    });

    test('instantiates a PillBoxSet from named argument constructor', () {
      expect(pillBoxSet.caretaker, equals('Bill'));
      expect(pillBoxSet.dependent, equals('Coda'));
      expect(pillBoxSet.pillBoxes.length, equals(1));
    });
  });

  group("Equatable", () {
    test('props contains list of all properties that determine equality when constructed', () {
      expect(pillBoxSet.props,
          equals([pillBoxSet.caretaker, pillBoxSet.dependent, pillBoxSet.pillBoxes]));
    });

    test('stringify is turned on when constructed', () {
      expect(pillBoxSet.stringify, isTrue);
    });
  });
}
