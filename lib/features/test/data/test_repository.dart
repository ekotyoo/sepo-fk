import 'dart:convert';

import 'package:SEPO/features/test/domain/test_score.dart';
import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/either.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:SEPO/common/error/failure.dart';
import 'package:SEPO/common/services/http_client.dart';
import 'package:SEPO/features/test/data/i_test_repository.dart';
import 'package:SEPO/features/test/domain/survey.dart';
import 'package:SEPO/features/test/domain/test.dart';

import '../../../common/error/network_exceptions.dart';

part 'test_repository.g.dart';

@riverpod
ITestRepository testRepository(TestRepositoryRef ref) {
  final client = ref.watch(httpClientProvider);
  return TestRepository(client);
}

class TestRepository implements ITestRepository {
  final HttpClient _client;

  TestRepository(this._client);

  @override
  Future<Either<Failure, List<Question>>> getQuestions(String surveyId) async {
    try {
      final response = await _client.get('/question/$surveyId');
      final result = (response['data'] as List<dynamic>)
          .map((e) => Question.fromJson(e))
          .toList();
      return right(result);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }

  @override
  Future<Either<Failure, List<Survey>>> getSurveys(String testId) async {
    try {
      final response = await _client.get('/survey/$testId');
      final result = (response['data'] as List<dynamic>)
          .map((e) => Survey.fromJson(e))
          .toList();
      return right(result);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }

  @override
  Future<Either<Failure, List<Test>>> getTests() async {
    try {
      final response = await _client.get('/test');
      final result = (response['data'] as List<dynamic>)
          .map((e) => Test.fromJson(e))
          .toList();
      return right(result);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }

  @override
  Future<Either<Failure, Unit>> postAnswers({required String testId, required String surveyId, required List<Question> questions}) async {
    try {
      final answerRequest = questions
          .map(
            (e) => AnswerRequest(
              optionId: e.offeredAnswer!.option.id,
              questionId: e.id,
            ).toJson(),
          )
          .toList();

      final data = jsonEncode({
        'test_id': testId,
        'survey_id': surveyId,
        'answers': answerRequest,
      });
      await _client.post('/question/answer', data: data);
      return right(unit);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }

  @override
  Future<Either<Failure, TestScore>> getTestScore(int userId, int testId) async {
    try {
      final response = await _client.get('/user/$userId/testscore/$testId');
      final result = TestScore.fromJson(response['data']);
      return right(result);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }
}
