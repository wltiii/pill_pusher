import 'package:pill_pusher/features/schedule/data/models/pill_box_model.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_box_set.dart';

import '../../domain/entities/pill_box.dart';

class PillBoxSetModel extends PillBoxSet {
  const PillBoxSetModel(
      // TODO(wltiii): can caretaker and dependent be delegated to super?
      {required String caretaker,
      required String dependent,
      required List<PillBox> pillBoxes})
      : super(caretaker: caretaker, dependent: dependent, pillBoxes: pillBoxes);

  factory PillBoxSetModel.fromJson(Map<String, dynamic> json) {
    return PillBoxSetModel(
      caretaker: json['caretaker'],
      dependent: json['dependent'],
      pillBoxes: json['pillBoxes']
          .map((pillBox) => PillBoxModel.fromJson(pillBox))
          .toList()
          .cast<PillBoxModel>(),
    );
  }

  //TODO(wltiii): delegate to super?
  Map<String, dynamic> toJson() {
    return {
      "caretaker": caretaker,
      "dependent": dependent,
      "pillBoxes": (pillBoxes).map((pillBox) => pillBox.toJson()).toList(),
    };
  }
}
