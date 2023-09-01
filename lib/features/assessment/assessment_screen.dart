import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sepo_app/features/assessment/current_condition_form.dart';
import 'package:sepo_app/features/assessment/personal_data_form.dart';
import 'package:sepo_app/features/assessment/pill_count_form.dart';
import 'package:sepo_app/features/onboarding/onboarding_screen.dart';

import '../../common/widgets/sepo_button.dart';
import 'assessment_controller.dart';

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
                  totalCount: 3,
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
                    children: const [
                      PersonalDataForm(),
                      CurrentConditionForm(),
                      PillCountForm()
                    ],
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
                          onPressed: () async {
                            final currentPage = state.currentPage;
                            if (currentPage < 2) {
                              _animateToPage(currentPage + 1);
                            } else {
                              await ref.read(assessmentControllerProvider.notifier).onSubmit();
                              if (!mounted) return;
                              context.goNamed('home');
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
