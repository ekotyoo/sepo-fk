import 'package:fpdart/fpdart.dart';
import 'package:sepo_app/features/assessment/domain/current_condition.dart';

import '../../../common/error/failure.dart';

abstract class ICurrentConditionRepository {
  Future<Either<Failure, Unit>> postCurrentCondition(CurrentCondition currentCondition);
}