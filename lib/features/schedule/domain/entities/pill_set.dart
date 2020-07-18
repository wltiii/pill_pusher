import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PillSet extends Equatable {
  final String name;
  final String frequency;
  final List pills;

  PillSet({
    @required this.name,
    @required this.frequency,
    @required this.pills
  });

  @override
  List<Object> get props => [name, frequency, pills];

  @override
  bool get stringify => true;
}
