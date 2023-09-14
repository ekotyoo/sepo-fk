import 'package:fpdart/fpdart.dart';
import 'package:sepo_app/features/test/domain/survey.dart';
import 'package:sepo_app/features/test/domain/test.dart';

import '../../../common/error/failure.dart';

abstract class ITestRepository {

  Future<Either<Failure, List<Test>>> getTests();

  Future<Either<Failure, List<Survey>>> getSurveys(String testId);

  Future<Either<Failure, List<Question>>> getQuestions(String surveyId);

  Future<Either<Failure, void>> postAnswers({required String testId, required List<Question> questions});
}