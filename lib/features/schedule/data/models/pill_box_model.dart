import '../../domain/entities/pill_box.dart';
import 'pill_model.dart';

class PillBoxModel extends PillBox {
  const PillBoxModel({
    // TODO(wltiii): can name and frequency be removed in favor of super?
    required String name,
    required String frequency,
    required List<PillModel> pills,
  }) : super(name: name, frequency: frequency, pills: pills);

  factory PillBoxModel.fromJson(Map<String, dynamic> json) {
    return PillBoxModel(
      name: json['name'],
      frequency: json['frequency'],
      pills: json['pills']
          .map((pill) => PillModel.fromJson(pill))
          .toList()
          .cast<PillModel>(),
    );
  }
}
