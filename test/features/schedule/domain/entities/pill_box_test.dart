import 'package:pill_pusher/features/schedule/domain/entities/pill.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_box.dart';
import 'package:test/test.dart';
import 'package:pill_pusher/domain/test-data.dart';

void main() {
  test('instantiates a PillSet from default named argument constructor', () {
    final pillbox = PillBox(
        name: 'Morning',
        frequency: 'Daily',
        pills: [
          Pill(name: "C"),
          Pill(name: "D"),
          Pill(name: "Fish (Krill) Oil"),
          Pill(name: "Glipizide"),
          Pill(name: "Probiotic"),
          Pill(name: "Zinc")
        ]
    );

    expect(pillbox.name, equals('Morning'));
    expect(pillbox.frequency, equals('Daily'));
    expect(pillbox.toString(), equals("PillBox(Morning, Daily, [Pill(C), Pill(D), Pill(Fish (Krill) Oil), Pill(Glipizide), Pill(Probiotic), Pill(Zinc)])"));
    expect(pillbox.pills, equals([
      "C",
      "D",
      "Fish (Krill) Oil",
      "Glipizide",
      "Probiotic",
      "Zinc"
    ]));
  });
}