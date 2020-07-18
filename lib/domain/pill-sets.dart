import 'dart:convert';
import 'package:pill_pusher/domain/pill-set.dart';


class PillSets {
  String dependent;
  List<PillSet> sets = [];

  PillSets(
      this.dependent,
      this.sets
      );

  PillSets.fromJson(String json) {
    Map decoded = jsonDecode(json);
    this.dependent = decoded['dependent'];

    for(Map set in decoded['sets']) {
      this.sets.add(PillSet(set['name'], set['frequency'], set['pills']));
    }
  }
}
