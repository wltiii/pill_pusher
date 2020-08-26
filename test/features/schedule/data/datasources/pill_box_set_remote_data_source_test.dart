import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:pill_pusher/features/schedule/data/datasources/pill_box_set_remote_data_source.dart';
import '../../../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  PillBoxSetRemoteDataSource dataSource ;

  setUp(() {
    dataSource = PillBoxSetRemoteDataSourceImpl();
  });

  group('gets a PillBoxSet by dependent', () {
    test('returns a PillBoxSetModel', () async {
      // given
      final aDependent = 'Coda';
      final expectedPillBoxSet = fixture('pill_box_set.json');
      // when
      final result = await dataSource.getByDependent(aDependent);
      // then
      expect(result, equals(expectedPillBoxSet));
    });

  });
}
