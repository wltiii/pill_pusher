import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_box.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_box_set.dart';
import 'package:pill_pusher/features/schedule/domain/repositories/pill_box_set_repository.dart';
import 'package:pill_pusher/features/schedule/domain/usecases/get_pill_box_set.dart';

class MockPillBoxSetRepository extends Mock implements PillBoxSetRepository {}

void main() {
  GetPillBoxSet useCase;
  MockPillBoxSetRepository mockPillBoxSetRepository;

  final pillBoxSet = PillBoxSet(caretaker: "Bill", dependent: 'Zorba', pillBoxes: [
    PillBox(name: 'Morning', frequency: 'Daily', pills: [
      Pill(name: "Extra Virgin Olive Oil"),
    ])
  ]);

  setUp(() {
    // mockPillBoxSetRepository = MockPillBoxSetRepository();
    // useCase = GetPillBoxSet(mockPillBoxSetRepository);
  });

  test('gets pill box set from the repository', () async {
    // given
    mockPillBoxSetRepository = MockPillBoxSetRepository();

    String givenDependent = 'Zorba';

    when(() => mockPillBoxSetRepository.getByDependent(givenDependent))
        .thenAnswer((realInvocation) => Future.value(Right(pillBoxSet)));

    // when
    useCase = GetPillBoxSet(mockPillBoxSetRepository);
    final result = await useCase(Params(dependent: givenDependent));

    // then
    expect(result, Right(pillBoxSet));
    verify(() => mockPillBoxSetRepository.getByDependent(givenDependent));
    verifyNoMoreInteractions(mockPillBoxSetRepository);
  });
}
