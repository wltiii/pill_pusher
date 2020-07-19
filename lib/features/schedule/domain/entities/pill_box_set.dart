import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'pill_box.dart';

class PillBoxSet extends Equatable {
  final String dependent;
  final List<PillBox> sets;

  PillBoxSet({
    @required this.dependent,
    @required this.sets
  });

  @override
  List<Object> get props => [dependent, sets];

  @override
  bool get stringify => true;
}
