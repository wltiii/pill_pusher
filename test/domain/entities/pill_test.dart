import 'dart:convert';
import 'package:pill_pusher/domain/entities/pill.dart';
import 'package:test/test.dart';

void main() {
  test("instantiates from parameterized constructor having required args only", () {
    final pill = Pill(name: "E");

    expect(pill.name, equals('E'));
    expect(pill.dose, equals(''));
    expect(pill.toString(), equals("Pill(E, )"));
    print(pill);
  });

  test("instantiates from parameterized constructor having all args", () {
    final pill = Pill(name: "E", dose: "400 IU");

    expect(pill.name, equals('E'));
    expect(pill.dose, equals('400 IU'));
    expect(pill.toString(), equals("Pill(E, 400 IU)"));
  });

  test('instantiates from json constructor having required args only', () {
    final Map<String, dynamic> jsonMap = json.decode('''{"name": "D"}''');
    final pill = Pill.fromJson(jsonMap);

    expect(pill.name, equals('D'));
    expect(pill.dose, equals(''));
    expect(pill.toString(), equals("Pill(D, )"));
  });

  test('instantiates from json constructor having all args', () {
    final Map<String, dynamic> jsonMap = json
        .decode('''{"name": "D", "dose": "400 IU"}''');
    final pill = Pill.fromJson(jsonMap);

    expect(pill.name, equals('D'));
    expect(pill.dose, equals('400 IU'));
    expect(pill.toString(), equals("Pill(D, 400 IU)"));
  });
}