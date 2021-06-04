import 'package:pill_pusher/domain/entities/pill-set.dart';


class PillSets {
  String dependent;
  List<PillSet> sets = [];

  //TODO this probably should be a named constructor to enable making fields private
  PillSets(
      this.dependent,
      this.sets
      );

  factory PillSets.fromJson(Map<String, dynamic> json) {
    return PillSets(
        json['dependent'] ?? '',
        json['sets'].map((set) => PillSet.fromJson(set))
            .toList()
            .cast<PillSet>()
    );
  }
}