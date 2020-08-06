import 'package:pill_pusher/features/schedule/domain/entities/pill.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_box.dart';
import 'package:test/test.dart';

void main() {
  final vitaminC = Pill(name: "C");
  final probiotic = Pill(name: "Probiotic");

  final pillbox = PillBox(
      name: 'Morning',
      frequency: 'Daily',
      pills: [
        vitaminC,
        probiotic,
      ]
  );

  test('instantiates a PillBox from default named argument constructor', () {

    expect(pillbox.name, equals('Morning'));
    expect(pillbox.frequency, equals('Daily'));
    expect(pillbox.toString(), equals("PillBox(Morning, Daily, [Pill(C), Pill(D), Pill(Fish (Krill) Oil), Pill(Glipizide), Pill(Probiotic), Pill(Zinc)])"));
    expect(pillbox.pills, equals([
      Pill(name:"C"),
      Pill(name:"D"),
      Pill(name:"Fish (Krill) Oil"),
      Pill(name:"Glipizide"),
      Pill(name:"Probiotic"),
      Pill(name:"Zinc"),
    ]));
  });
}