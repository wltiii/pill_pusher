import 'package:pill_pusher/features/schedule/domain/entities/pill.dart';

class PillModel extends Pill {
  const PillModel({
    //TODO(wltiii): delegate to super?
    required String name,
  }) : super(name: name);

  //TODO(wltiii): add test
  factory PillModel.fromPill(Pill pill) {
    return PillModel(name: pill.name);
  }

  factory PillModel.fromJson(Map<String, dynamic> json) {
    return PillModel(name: json['name']);
  }

  //TODO(wltiii): delegate to super?
  Map<String, dynamic> toJson() {
    return {
      "name": name,
    };
  }
}
