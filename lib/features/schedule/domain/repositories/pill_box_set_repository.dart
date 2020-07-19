import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/pill_box_set.dart';


abstract class PillBoxSetRepository {
  Future<Either<Failure, PillBoxSet>> getPillBoxSet(String dependent);
}
