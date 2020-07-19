import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  // If the subclasses have some properties, they'll get passed to this constructor
  // so that Equatable can perform value comparison.
  // NOTE: The above may not be true for the following line show syntax error.
//  Failure([List properties = const <dynamic>[]]) : super(properties);
  Failure([List properties = const <dynamic>[]]);
}