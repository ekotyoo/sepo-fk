import 'package:fpdart/fpdart.dart';
import 'package:SEPO/features/test/domain/survey.dart';
import 'package:SEPO/features/test/domain/test.dart';

import '../../../common/error/failure.dart';
import '../domain/test_score.dart';

abstract class ITestRepository {

  Future<Either<Failure, List<Test>>> getTests();

  Future<Either<Failure, List<Survey>>> getSurveys(String testId);

  Future<Either<Failure, List<Question>>> getQuestions(String surveyId);

  Future<Either<Failure, void>> postAnswers({required String testId, required String surveyId, required List<Question> questions});

  Future<Either<Failure, TestScore>> getTestScore(int testId, int userId);
}