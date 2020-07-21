import 'package:pill_pusher/features/schedule/domain/entities/pill.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_box.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_box_set.dart';
import 'package:test/test.dart';

void main() {

  test('instantiates a PillSets from default constructor', ()
  {
    final pillBox = PillBox(
        name: 'Morning',
        frequency: 'Daily',
        pills: [
          Pill(name: "Extra Virgin Olive Oil"),
        ]
    );
    final pillBoxSet = PillBoxSet(dependent: 'Coda', sets: [pillBox]);

    expect(pillBoxSet.dependent, equals('Coda'));
    expect(pillBoxSet.sets.length, equals(1));
    expect(pillBoxSet.toString(),
        equals("PillBoxSet(Coda, [PillBox(Morning, Daily, [Pill(Extra Virgin Olive Oil)])])"));
  });
}