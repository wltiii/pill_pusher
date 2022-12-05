import 'package:pill_pusher/domain/entities/pillbox.dart';


class PillboxContainer {
  String dependent;
  List<PillSet> sets = [];

  //TODO this probably should be a named constructor to enable making fields private
  PillboxContainer(
      this.dependent,
      this.sets
      );

  factory PillboxContainer.fromJson(Map<String, dynamic> json) {
    return PillboxContainer(
        json['dependent'] ?? '',
        json['sets'].map((set) => PillSet.fromJson(set))
            .toList()
            .cast<PillSet>()
    );
  }
}
