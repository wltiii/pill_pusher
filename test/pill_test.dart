import 'package:pill_pusher/features/schedule/domain/entities/pill.dart';
import 'package:test/test.dart';

void main() {
  test("instantiates a PillSet from default named argument constructor", () {
    final pill = Pill(name: "Simvastatin");

    expect(pill.name, equals('Simvastatin'));
    expect(pill.toString(), equals("Pill(Simvastatin)"));
  });
}