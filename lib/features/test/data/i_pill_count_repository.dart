import 'package:fpdart/fpdart.dart';
import 'package:sepo_app/features/assessment/domain/pill_count.dart';

import '../../../common/error/failure.dart';

abstract class IPillCountRepository {
  Future<Either<Failure, Unit>> postPillCount(PillCount pillCount);
}