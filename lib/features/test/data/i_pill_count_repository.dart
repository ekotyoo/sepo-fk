import 'package:fpdart/fpdart.dart';
import 'package:SEPO/features/assessment/domain/pill_count.dart';

import '../../../common/error/failure.dart';

abstract class IPillCountRepository {
  Future<Either<Failure, List<PillCount>>> getPillCounts(int userId);
  Future<Either<Failure, Unit>> postPillCount(PillCount pillCount);
  Future<Either<Failure, Unit>> updatePillCount(int userId, int number, PillCount pillCount);
}