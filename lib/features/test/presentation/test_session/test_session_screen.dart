import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:SEPO/common/constants/colors.dart';
import 'package:SEPO/common/widgets/sepo_button.dart';
import 'package:SEPO/features/assessment/current_condition_form.dart';
import 'package:SEPO/features/test/domain/survey.dart';
import 'package:SEPO/features/test/presentation/test_list/test_list_screen.dart';
import 'package:SEPO/features/test/presentation/test_list/test_provider.dart';
import 'package:SEPO/features/test/presentation/test_session/test_session_controller.dart';

import '../../../../utils/snackbar_utils.dart';

class TestSessionScreen extends ConsumerStatefulWidget {
  const TestSessionScreen({
    required this.testId,
    required this.surveyId,
    required this.surveyName,
    Key? key,
  }) : super(key: key);

  final String testId;
  final String surveyId;
  final String surveyName;

  @override
  ConsumerState<TestSessionScreen> createState() => _TestSessionScreenState();
}

class _TestSessionScreenState extends ConsumerState<TestSessionScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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
    final questionsAsync = ref
        .watch(testSessionControllerProvider(widget.testId, widget.surveyId));

    ref.listen(
      testSessionControllerProvider(widget.testId, widget.surveyId)
          .select((value) => value.requireValue.errorMessage),
      (previous, next) {
        if (next != null && context.mounted) {
          showSnackbar(context, message: next, type: SnackbarType.error);
        }
        ref
            .read(testSessionControllerProvider(widget.testId, widget.surveyId)
                .notifier)
            .setErrorMessage(null);
      },
    );

    ref.listen(
      testSessionControllerProvider(widget.testId, widget.surveyId)
          .select((value) => value.requireValue.successMessage),
      (previous, next) {
        if (next != null && context.mounted) {
          showSnackbar(context, message: next);
          ref.invalidate(testsProvider);
          context.pop();
        }
        ref
            .read(testSessionControllerProvider(widget.testId, widget.surveyId)
                .notifier)
            .setSuccessMessage(null);
      },
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kColorBackground,
          foregroundColor: kColorPrimary,
          leading: questionsAsync.when(
            data: (data) {
              if (data.questionNumber > 0) {
                return IconButton(
                  onPressed: () =>
                      _pageController.jumpToPage(data.questionNumber - 1),
                  icon: const Icon(Icons.arrow_back),
                );
              }

              return IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.close),
              );
            },
            error: (error, stackTrace) => IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.close),
            ),
            loading: () => IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.close),
            ),
          ),
          actions: questionsAsync.when(
            data: (state) => [
              if (state.questions.length > 1)
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => QuestionList(
                        questions: state.questions,
                        currentQuestionIndex: state.questionNumber,
                        onClick: (value) {
                          context.pop();
                          _pageController.jumpToPage(value);
                        },
                      ),
                    );
                  },
                  icon: const Icon(Icons.menu),
                ),
            ],
            error: (error, stackTrace) => [],
            loading: () => [],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: questionsAsync.when(
              data: (state) {
                final nextButtonEnabled =
                    state.questions[state.questionNumber].offeredAnswer !=
                            null ||
                        state.questions[state.questionNumber].type ==
                            QuestionType.range;
                final allAnswered = state.questions
                    .every((element) => element.offeredAnswer != null);

                return [
                  const SizedBox(height: 16),
                  Text(
                    'Sesi ${widget.surveyName}',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: PageView.builder(
                      itemCount: state.questions.length,
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (value) => ref
                          .read(testSessionControllerProvider(
                                  widget.testId, widget.surveyId)
                              .notifier)
                          .onQuestionNumberChange(value),
                      itemBuilder: (context, index) {
                        final question = state.questions[index];
                        return QuestionContent(
                          question: question,
                          testId: widget.testId,
                          surveyId: widget.surveyId,
                          surveyName: widget.surveyName,
                        );
                      },
                    ),
                  ),
                  allAnswered
                      ? SepoButton(
                          loading: state.isLoading,
                          onPressed: () {
                            ref
                                .read(
                                  testSessionControllerProvider(
                                    widget.testId,
                                    widget.surveyId,
                                  ).notifier,
                                )
                                .onSubmit();
                          },
                          label: 'Simpan',
                        )
                      : SepoButton(
                          onPressed: () {
                            if (state.questionNumber <
                                state.questions.length - 1) {
                              _animateToPage(state.questionNumber + 1);
                            }
                          },
                          disabled: !nextButtonEnabled,
                          label: 'Selanjutnya',
                        ),
                  const SizedBox(height: 32),
                ];
              },
              error: (error, stackTrace) => [Container()],
              loading: () => const [
                LoadingIndicator(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class QuestionContent extends ConsumerWidget {
  const QuestionContent({
    Key? key,
    required this.question,
    required this.testId,
    required this.surveyId,
    required this.surveyName,
  }) : super(key: key);

  final Question question;
  final String testId;
  final String surveyId;
  final String surveyName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionsAsync =
        ref.watch(testSessionControllerProvider(testId, surveyId));

    return questionsAsync.when(
      data: (state) {
        bool? boolOptionValue;
        if (question.type == QuestionType.boolean) {
          if (state.questions[state.questionNumber].offeredAnswer?.option
                  .number !=
              null) {
            boolOptionValue = state.questions[state.questionNumber]
                    .offeredAnswer?.option.number ==
                1;
          }
        }

        int? rangeOptionIndex;
        if (question.type == QuestionType.range) {
          if (state.questions[state.questionNumber].offeredAnswer != null) {
            rangeOptionIndex = state.questions[state.questionNumber].options
                .indexOf(state
                    .questions[state.questionNumber].offeredAnswer!.option);
          } else {
            rangeOptionIndex = 0;
          }
        }

        final optionContent = switch (question.type) {
          QuestionType.option => [
              Expanded(
                child: FormOption(
                  items: question.options
                      .map(
                        (e) => CheckboxItem(
                          label: e.text,
                          value: e ==
                              state.questions[state.questionNumber]
                                  .offeredAnswer?.option,
                          onChanged: (value) {
                            ref
                                .read(testSessionControllerProvider(
                                        testId, surveyId)
                                    .notifier)
                                .answerQuestion(e);
                          },
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          QuestionType.boolean => [
              const SizedBox(height: 32),
              BooleanOption(
                value: boolOptionValue,
                onPositiveClick: () {
                  final option =
                      state.questions[state.questionNumber].options.firstWhere(
                    (element) => element.number == 1,
                  );
                  ref
                      .read(testSessionControllerProvider(testId, surveyId)
                          .notifier)
                      .answerQuestion(option);
                },
                onNegativeClick: () {
                  final option =
                      state.questions[state.questionNumber].options.firstWhere(
                    (element) => element.number == 0,
                  );
                  ref
                      .read(testSessionControllerProvider(testId, surveyId)
                          .notifier)
                      .answerQuestion(option);
                },
              ),
            ],
          QuestionType.range => [
              const SizedBox(height: 32),
              Expanded(
                child: RangeOption(
                  key: ValueKey(state.questions[state.questionNumber]),
                  options: question.options,
                  initialIndex: rangeOptionIndex,
                  onOptionChanged: (index) {
                    ref
                        .read(testSessionControllerProvider(testId, surveyId)
                            .notifier)
                        .answerQuestion(question.options[index]);
                  },
                ),
              ),
            ],
        };

        return Column(
          children: [
            Text(
              question.question,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: surveyName == 'VAS' ? 150 : 200,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  question.image ?? 'https://via.placeholder.com/350x150',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (question.type == QuestionType.range) ...[
              if (surveyName == 'VAS')
                Image.asset(
                  'assets/images/vas_range.png',
                  width: 250,
                ),
              const SizedBox(height: 8),
              Text(
                'Geser untuk menyesuaikan',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: kColorNeutral100),
              ),
            ],
            ...optionContent,
          ],
        );
      },
      error: (error, stackTrace) => Container(),
      loading: () => const LoadingIndicator(),
    );
  }
}

class RangeOption extends StatefulWidget {
  const RangeOption({
    Key? key,
    required this.options,
    this.onOptionChanged,
    this.initialIndex,
  }) : super(key: key);

  final List<Option> options;
  final int? initialIndex;
  final void Function(int)? onOptionChanged;

  @override
  State<RangeOption> createState() => _RangeOptionState();
}

class _RangeOptionState extends State<RangeOption> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: widget.initialIndex ?? 0,
      keepPage: false,
    );
    Future(() {
      widget.onOptionChanged?.call(widget.initialIndex ?? 0);
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.options.length,
        onPageChanged: (value) {
          widget.onOptionChanged?.call(value);
        },
        itemBuilder: (context, index) {
          final option = widget.options[index];
          return AnimatedBuilder(
            animation: _pageController,
            builder: (context, child) => Transform.scale(
              alignment: Alignment.center,
              scale: _pageController.position.haveDimensions
                  ? max(0.8, (1 - ((_pageController.page! - index).abs() / 2)))
                  : 1.0,
              child: Opacity(
                opacity: _pageController.position.haveDimensions
                    ? max(
                        0.8, (1 - ((_pageController.page! - index).abs() / 2)))
                    : 1.0,
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          option.text,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 16),
                        if (option.image != null)
                          Image.network(option.image!, height: 32, width: 32),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Text(
                      option.number.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class BooleanOption extends StatelessWidget {
  const BooleanOption({
    Key? key,
    this.onPositiveClick,
    this.onNegativeClick,
    this.value,
  }) : super(key: key);

  final VoidCallback? onPositiveClick;
  final VoidCallback? onNegativeClick;
  final bool? value;

  @override
  Widget build(BuildContext context) {
    final bool positiveSelected = value == true;
    final bool negativeSelected = value == false;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: onNegativeClick,
          iconSize: 60,
          icon: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: negativeSelected ? Colors.red : null,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.red, width: 4),
            ),
            child: Center(
              child: FittedBox(
                child: Icon(
                  Icons.close,
                  color: negativeSelected ? Colors.white : Colors.red,
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: onPositiveClick,
          iconSize: 60,
          icon: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: positiveSelected ? Colors.green : null,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.green, width: 4),
            ),
            child: Center(
              child: FittedBox(
                child: Icon(
                  Icons.check,
                  color: positiveSelected ? Colors.white : Colors.green,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class QuestionList extends StatelessWidget {
  const QuestionList(
      {Key? key,
      required this.questions,
      required this.currentQuestionIndex,
      this.onClick})
      : super(key: key);

  final int currentQuestionIndex;
  final List<Question> questions;
  final Function(int)? onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Text('Daftar Pertanyaan',
              style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 24),
          Expanded(
            child: GridView.builder(
              itemCount: questions.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                childAspectRatio: 1,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemBuilder: (context, index) => QuestionGridItem(
                number: index + 1,
                onClick: () => onClick?.call(index),
                selected: currentQuestionIndex == index,
                answered: questions[index].offeredAnswer != null,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 2,
                ),
                const SizedBox(width: 8),
                Text(
                  'Terjawab',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.green),
                ),
                const Spacer(),
                const CircleAvatar(
                  backgroundColor: kColorPrimary,
                  radius: 2,
                ),
                const SizedBox(width: 8),
                Text(
                  'Soal saat ini',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: kColorPrimary),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class QuestionGridItem extends StatelessWidget {
  const QuestionGridItem({
    Key? key,
    required this.number,
    this.onClick,
    this.answered = false,
    this.selected = false,
  }) : super(key: key);

  final int number;
  final VoidCallback? onClick;
  final bool answered;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    var color = Colors.white;

    if (answered) color = Colors.green;
    if (selected) color = kColorPrimary;

    return InkWell(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Center(
          child: Text(number.toString(),
              style: Theme.of(context).textTheme.titleMedium),
        ),
      ),
    );
  }
}
