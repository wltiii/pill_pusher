import 'package:flutter_test/flutter_test.dart';
import 'package:pill_pusher/core/network/network_info.dart';

class MockNetworkInfo implements NetworkInfo {
  @override
  // TODO: implement isConnected
  Future<bool> get isConnected => throw UnimplementedError();
}

void main() {
  group('isConnected', () {
    test(
      'should forward the call to DataConnectionChecker.hasConnection',
      () async {
        // given
        final mockNetworkInfo = MockNetworkInfo();
        final givenConnectionFuture = Future.value(true);

//        when(mockDataConnectionChecker.hasConnection)
//            .thenAnswer((_) => tHasConnectionFuture);
        // when
        final result = mockNetworkInfo.isConnected;
        // then
//        verify(mockDataConnectionChecker.hasConnection);
        expect(result, givenConnectionFuture);
      },
      skip: 'not yet implemented',
    );
  });
}
