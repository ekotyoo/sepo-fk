import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sepo_app/common/error/failure.dart';
import 'package:sepo_app/common/services/http_client.dart';
import 'package:sepo_app/features/test/data/i_pill_count_repository.dart';

import '../../../common/error/network_exceptions.dart';
import '../../assessment/domain/pill_count.dart';

part 'pill_count_repository.g.dart';

@riverpod
IPillCountRepository pillCountRepository(PillCountRepositoryRef ref) {
  final client = ref.watch(httpClientProvider);
  return PillCountRepository(client);
}

class PillCountRepository implements IPillCountRepository {
  final HttpClient _client;

  PillCountRepository(this._client);

  @override
  Future<Either<Failure, Unit>> postPillCount(PillCount pillCount) async {
    try {
      final data = pillCount.toJson();
      await _client.post('/user/pillcount', data: data);

      return right(unit);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }
}