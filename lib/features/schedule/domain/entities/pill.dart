import 'package:equatable/equatable.dart';

class Pill extends Equatable {
  final String name;

  const Pill({
    required this.name,
  });

  @override
  List<Object> get props => [name];

  @override
  bool get stringify => true;
}
