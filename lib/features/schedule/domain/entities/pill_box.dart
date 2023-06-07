import 'package:equatable/equatable.dart';

import '../../data/models/pill_model.dart';
import 'pill.dart';

class PillBox extends Equatable {
  final String name;
  final String frequency;
  final List<Pill> pills;

  const PillBox({
    required this.name,
    required this.frequency,
    required this.pills,
  });

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "frequency": frequency,
      "pills":
          (pills).map((pill) => PillModel.fromPill(pill).toJson()).toList(),
    };
  }

  @override
  List<Object> get props => [name, frequency, pills];

  @override
  bool get stringify => true;
}
