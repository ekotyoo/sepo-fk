import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../common/error/failure.dart';
import '../../../common/error/network_exceptions.dart';
import '../../../common/services/http_client.dart';
import '../domain/personal_data.dart';
import 'i_personal_data_repository.dart';

part 'personal_data_repository.g.dart';

@riverpod
IPersonalDataRepository personalDataRepository(PersonalDataRepositoryRef ref) {
  final client = ref.watch(httpClientProvider);
  return PersonalDataRepository(client);
}

class PersonalDataRepository implements IPersonalDataRepository {
  final HttpClient _client;

  PersonalDataRepository(this._client);

  @override
  Future<Either<Failure, Unit>> postPersonalData(PersonalData personalData) async {
    try {
      final data = personalData.toJson();
      await _client.post('/user/personaldata', data: data);

      return right(unit);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }

  @override
  Future<Either<Failure, PersonalData>> getPersonalData(int userId) async {
    try {
      final result = await _client.get('/user/$userId/personaldata');
      final personalData = PersonalData.fromJson(result['data']);
      return right(personalData);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }
}