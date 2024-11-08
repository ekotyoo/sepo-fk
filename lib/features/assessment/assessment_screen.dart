import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../common/widgets/sepo_button.dart';
import '../../utils/snackbar_utils.dart';
import '../auth/domain/auth_user.dart';
import '../onboarding/onboarding_screen.dart';
import 'assessment_controller.dart';
import 'current_condition_form.dart';
import 'personal_data_form.dart';
import 'pill_count_form.dart';

class AssessmentScreen extends ConsumerStatefulWidget {
  const AssessmentScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends ConsumerState<AssessmentScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _animateToPage(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(assessmentControllerProvider);
    final canGoBack = state.currentPage > 0;

    final authState = state.authState as SignedIn;
    final forms = [
      const PersonalDataForm(),
      const CurrentConditionForm(),
      const PillCountForm(),
    ];

    if (authState.personalDataFilled) {
      forms.removeWhere((element) => element is PersonalDataForm);
    }

    if (authState.currentConditionFilled) {
      forms.removeWhere((element) => element is CurrentConditionForm);
    }

    if (authState.pillCountFilled) {
      forms.removeWhere((element) => element is PillCountForm);
    }

    final personalData = state.personalDataState;
    final personalDataFormValidated = personalData.nameInput.isValid &&
        personalData.birthDateInput.isValid &&
        personalData.genderInput.isValid &&
        personalData.addressInput.isValid &&
        personalData.phoneInput.isValid &&
        personalData.educationInput.isValid;
    final personalDataFormEnabled =
        personalDataFormValidated && forms[state.currentPage] is PersonalDataForm;

    final currentCondition = state.currentConditionState;
    final currentConditionFormValidated =
        currentCondition.illnessDurationInput.isValid &&
            currentCondition.exerciseDurationInput.isValid;
    final currentConditionEnabled =
        currentConditionFormValidated && forms[state.currentPage] is CurrentConditionForm;

    final pillCount = state.pillCountState;
    final pillCountFormValidated = pillCount.medicineAfter.isNotEmpty &&
        pillCount.medicineBefore.isNotEmpty &&
        pillCount.medicineSource != null &&
        pillCount.medicineUsed.isNotEmpty;
    final pillCountEnabled = pillCountFormValidated && forms[state.currentPage] is PillCountForm;

    ref.listen(
      assessmentControllerProvider.select((value) => value.errorMessage),
      (previous, next) {
        if (next != null && context.mounted) {
          showSnackbar(context, message: next, type: SnackbarType.error);
        }
        ref.read(assessmentControllerProvider.notifier).setErrorMessage(null);
      },
    );

    ref.listen(
      assessmentControllerProvider.select((value) => value.successMessage),
      (previous, next) {
        if (next != null && context.mounted) {
          showSnackbar(context, message: next);
          if (state.currentPage < forms.length - 1) {
            _animateToPage(state.currentPage + 1);
            debugPrint('animating to page ${state.currentPage + 1}');
          } else {
            debugPrint('navigating to home');
            context.goNamed('home');
          }
        }
        ref.read(assessmentControllerProvider.notifier).setSuccessMessage(null);
      },
    );

    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          if (canGoBack) {
            _animateToPage(state.currentPage - 1);
            return false;
          }
          return true;
        },
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                const SizedBox(height: 32),
                PageIndicator(
                  totalCount: forms.length,
                  currentCount: state.currentPage + 1,
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    onPageChanged: (value) => ref
                        .read(assessmentControllerProvider.notifier)
                        .onPageChange(value),
                    physics: const NeverScrollableScrollPhysics(),
                    children: forms,
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      if (canGoBack)
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              if (!canGoBack) return;
                              _animateToPage(state.currentPage - 1);
                            },
                            child: const Text('Kembali'),
                          ),
                        ),
                      const SizedBox(width: 12),
                      Expanded(
                        flex: 2,
                        child: SepoButton(
                          label: 'Selanjutnya',
                          disabled: !personalDataFormEnabled &&
                              !currentConditionEnabled &&
                              !pillCountEnabled,
                          loading: state.isLoading,
                          onPressed: () async {
                            final currentPage = state.currentPage;
                            if (forms[currentPage] is PersonalDataForm) {
                              ref
                                  .read(assessmentControllerProvider.notifier)
                                  .onPersonalDataSubmit();
                            } else if (forms[currentPage]
                                is CurrentConditionForm) {
                              ref
                                  .read(assessmentControllerProvider.notifier)
                                  .onCurrentConditionSubmit();
                            } else if (forms[currentPage] is PillCountForm) {
                              ref
                                  .read(assessmentControllerProvider.notifier)
                                  .onSubmit();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
