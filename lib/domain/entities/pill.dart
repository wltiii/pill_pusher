import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class Pill extends Equatable {
  final String name;
  final String dose;

  //TODO this probably should be a named constructor to enable making fields private
  Pill({
    @required this.name,
    this.dose : '',
  });

  @override
  List<Object> get props => [name, dose];

  @override
  bool get stringify => true;

  factory Pill.fromJson(Map<String, dynamic> json) {
    return Pill(name: json['name'], dose: json['dose'] ?? '');
  }

  // TODO add tests for this!
  Map<String, dynamic> toJson() {
    return {
      "name": name,
    };
  }

}