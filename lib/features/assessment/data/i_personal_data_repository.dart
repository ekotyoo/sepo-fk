import 'package:fpdart/fpdart.dart';

import '../../../common/error/failure.dart';
import '../domain/personal_data.dart';

abstract class IPersonalDataRepository {
  Future<Either<Failure, Unit>> postPersonalData(PersonalData personalData);
  Future<Either<Failure, PersonalData>> getPersonalData(int userId);
}