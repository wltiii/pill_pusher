import 'package:dartz/dartz.dart';
import 'package:pill_pusher/core/error/failure.dart';
import 'package:pill_pusher/features/schedule/domain/entities/pill_box_set.dart';

import '../../domain/repositories/pill_box_set_repository.dart';

class PillBoxSetRepositoryImpl implements PillBoxSetRepository {
  @override
  Future<Either<Failure, PillBoxSet>> getByDependent(String dependent) async {
    // TODO: not yet implemented
    return Left(NotFoundFailure());
  }
}
