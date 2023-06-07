import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_box.dart';

void main() {
  const vitaminC = Pill(name: "C");
  const probiotic = Pill(name: "Probiotic");

  const pillbox = PillBox(name: 'Morning', frequency: 'Daily', pills: [
    vitaminC,
    probiotic,
  ]);

  group("construction", () {
    test('should be a subclass of Equatable entity', () async {
      expect(pillbox, isA<Equatable>());
    });

    test('instantiates a PillBox from named argument constructor', () {
      expect(pillbox.name, equals('Morning'));
      expect(pillbox.frequency, equals('Daily'));
      expect(pillbox.pills.length, equals(2));
    });
  });

  group("Equatable", () {
    test(
        'props contains list of all properties that determine equality when constructed',
        () {
      expect(pillbox.props,
          equals([pillbox.name, pillbox.frequency, pillbox.pills]));
    });

    test('stringify is turned on when constructed', () {
      expect(pillbox.stringify, isTrue);
    });
  });
}
