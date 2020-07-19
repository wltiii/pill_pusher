import 'package:pill_pusher/features/schedule/domain/entities/pill.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_box.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_sets.dart';
import 'package:test/test.dart';
import 'package:pill_pusher/domain/test-data.dart';

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
    final pillSets = PillSets(dependent: 'Coda', sets: [pillBox]);

    expect(pillSets.dependent, equals('Coda'));
    expect(pillSets.sets.length, equals(1));
    expect(pillSets.toString(),
        equals("PillSets(Coda, [PillBox(Morning, Daily, [Pill(Extra Virgin Olive Oil)])])"));
  });
}