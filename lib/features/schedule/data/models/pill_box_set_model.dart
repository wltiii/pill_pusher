import 'package:meta/meta.dart';
import 'pill_box_model.dart';

import 'pill_model.dart';
import '../../domain/entities/pill_box_set.dart';

class PillBoxSetModel extends PillBoxSet {
  final List<PillBoxModel> pillBoxes;

  PillBoxSetModel({
    @required String caretaker,
    @required String dependent,
    @required this.pillBoxes
  }) : super(
      caretaker: caretaker,
      dependent: dependent,
    pillBoxes: pillBoxes
  );

  factory PillBoxSetModel.fromJson(Map<String, dynamic> json) {
    return PillBoxSetModel(
      caretaker: json['caretaker'],
      dependent: json['dependent'],
      pillBoxes: json['pillBoxes']
          .map((pillBox) => PillBoxModel.fromJson(pillBox))
            .toList()
            .cast<PillModel>(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "caretaker": caretaker,
      "dependent": dependent,
      "pillBoxes": (pillBoxes).map((pillBox) => pillBox.toJson()).toList(),
    };
  }
}