import 'dart:convert';

class PillSet {
  String name;
  String frequency;
  List pills;

  PillSet(
    this.name,
    this.frequency,
    this.pills
  );

  PillSet.fromJson(String json) {
    Map decoded = jsonDecode(json);
    this.name = decoded['name'];
    this.frequency = decoded['frequency'];
    this.pills = decoded['pills'];
  }
}
