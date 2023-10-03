import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sepo_app/features/auth/domain/auth_user.dart';
import 'pill_count_state.dart';
import 'current_condition_state.dart';
import 'personal_data_state.dart';

part 'assessment_state.freezed.dart';

@freezed
class AssessmentState with _$AssessmentState {
  const factory AssessmentState({
    @Default(0) int currentPage,
    @Default(PersonalDataState()) PersonalDataState personalDataState,
    @Default(CurrentConditionState()) CurrentConditionState currentConditionState,
    @Default(PillCountState()) PillCountState pillCountState,
    @Default(false) bool isLoading,
    required AuthUser authState,
    String? errorMessage,
    String? successMessage,
}) = _AssessmentState;
}