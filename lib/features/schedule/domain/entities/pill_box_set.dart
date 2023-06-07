import 'package:equatable/equatable.dart';

import 'pill_box.dart';

class PillBoxSet extends Equatable {
  final String caretaker;
  final String dependent;
  final List<PillBox> pillBoxes;

  const PillBoxSet(
      {required this.caretaker,
      required this.dependent,
      required this.pillBoxes});

  @override
  List<Object> get props => [caretaker, dependent, pillBoxes];

  @override
  bool get stringify => true;
}
