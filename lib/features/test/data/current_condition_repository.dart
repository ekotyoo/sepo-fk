import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sepo_app/common/error/failure.dart';
import 'package:sepo_app/common/services/http_client.dart';
import 'package:sepo_app/features/assessment/domain/current_condition.dart';
import 'package:sepo_app/features/test/data/i_current_condition_repository.dart';

import '../../../common/error/network_exceptions.dart';

part 'current_condition_repository.g.dart';

@riverpod
ICurrentConditionRepository currentConditionRepository(CurrentConditionRepositoryRef ref) {
  final client = ref.watch(httpClientProvider);
  return CurrentConditionRepository(client);
}

class CurrentConditionRepository implements ICurrentConditionRepository {
 final HttpClient _client;

  CurrentConditionRepository(this._client);

  @override
  Future<Either<Failure, Unit>> postCurrentCondition(CurrentCondition currentCondition) async {
    try {
      final data = currentCondition.toJson();
      await _client.post('/user/currentcondition', data: data);

      return right(unit);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }
}