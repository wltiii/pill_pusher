import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pill_pusher/core/usecases/usecase.dart';

void main() {
  final noParams = NoParams();

  group("Equatable", () {
    test('should be a subclass of Equatable entity', () async {
      expect(noParams, isA<Equatable>());
    });

    // TODO this test could be named better
    test('props contains no properties for equality determination when constructed', ()
    {
      expect(noParams.props, equals([]));
    });
  });}