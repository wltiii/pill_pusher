import 'package:equatable/equatable.dart';
import 'package:pill_pusher/domain/entities/pill.dart';

class PillSet extends Equatable {
  final String name;
  final String frequency;
  final List<Pill> pills;

  //TODO this probably should be a named constructor to enable making fields private
  const PillSet.pillbox({
    required this.name,
    this.frequency = '',
    this.pills = const [],
  });

  @override
  List<Object> get props => [name, frequency, pills];

  @override
  bool get stringify => true;

  factory PillSet.fromJson(Map<String, dynamic> json) {
    var somePills =
        json['pills'].map((pill) => Pill.fromJson(pill)).toList().cast<Pill>();

    var pillSet = PillSet.pillbox(
      name: json['name'],
      frequency: json['frequency'] ?? '',
      pills: somePills,
    );

    return pillSet;
  }

  // TODO add tests for this!
  Map<String, dynamic> toJson() {
    return {
      "name": name,
    };
  }
}
