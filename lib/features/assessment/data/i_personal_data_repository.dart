import 'package:fpdart/fpdart.dart';
import 'package:sepo_app/features/assessment/domain/personal_data.dart';

import '../../../common/error/failure.dart';

abstract class IPersonalDataRepository {
  Future<Either<Failure, Unit>> postPersonalData(PersonalData personalData);
}