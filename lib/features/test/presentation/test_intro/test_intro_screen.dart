import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sepo_app/common/constants/colors.dart';
import 'package:sepo_app/features/test/presentation/test_intro/test_intro_controller.dart';

class TestIntroScreen extends ConsumerWidget {
  const TestIntroScreen({Key? key, required this.testId}) : super(key: key);

  final String testId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(testIntroControllerProvider(testId));

    const finishContent = _SessionBanner(
      title: 'SELESAI',
      subtitle: 'Kamu telah menyelesaikan test',
      description: 'Kamu mendapatkan xx point',
      image: 'https://via.placeholder.com/350x150',
    );

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: kColorGradient1,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: stateAsync.when(
              data: (state) {
                if (state.surveys.isEmpty) return Container();
                final currentSurvey = state.surveys[state.currentSurveyIndex ?? 0];

                return Column(
                  children: [
                    const SizedBox(height: 32),
                    if (!state.isFinished)
                    _PageIndicator(
                      totalCount: state.surveys.length,
                      currentCount: (state.currentSurveyIndex ?? 0) + 1,
                      onClose: () {},
                    ),
                    const SizedBox(height: 32),
                    if (state.isFinished) finishContent,
                    if (state.currentSurveyIndex != null && !state.isFinished)
                      _SessionBanner(
                        title: 'Sesi-${state.currentSurveyIndex! + 1}',
                        subtitle: 'Sesi ini adalah ${currentSurvey.name}',
                        description: state
                            .surveys[state.currentSurveyIndex!].description,
                        image: currentSurvey.image,
                      ),
                    if (state.currentSurveyIndex == null && !state.isFinished)
                      _SessionBanner(
                        title: 'TEST',
                        description:
                            'Tahap pertama adalah kuesioner ${state.surveys.firstOrNull?.name}',
                        image: 'https://via.placeholder.com/350x150',
                      ),
                    const Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kColorAccent,
                        foregroundColor: kColorPrimary,
                      ),
                      onPressed: () {
                        if (state.isFinished) {
                          context.pop();
                          return;
                        }
                        if (state.currentSurveyIndex == null) {
                          ref
                              .read(testIntroControllerProvider(testId).notifier)
                              .initSession();
                          return;
                        }
                        context.pushNamed(
                          'session',
                          params: {
                            'testId': testId,
                            'surveyId': currentSurvey.id.toString(),
                          },
                        );
                      },
                      child: Text(
                        state.isFinished
                            ? 'Selesai'
                            : state.currentSurveyIndex == null
                                ? 'Lanjut'
                                : 'Kerjakan',
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                );
              },
              error: (error, stackTrace) =>
                  Center(child: Text(error.toString())),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
          ),
        ),
      ),
    );
  }
}

class _SessionBanner extends StatelessWidget {
  const _SessionBanner({
    Key? key,
    required this.title,
    this.subtitle,
    required this.description,
    required this.image,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.white),
        ),
        if (subtitle != null)
          Text(
            subtitle!,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.white),
          ),
        const SizedBox(height: 32),
        Image.network(
          image,
          height: 300,
        ),
        const SizedBox(height: 32),
        Text(
          description,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}

class _PageIndicator extends StatelessWidget {
  const _PageIndicator({
    Key? key,
    required this.totalCount,
    required this.currentCount,
    this.onClose,
  }) : super(key: key);

  final int totalCount;
  final int currentCount;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: Center(
            child: Text(
              '$currentCount/$totalCount',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: LinearProgressIndicator(
            value: currentCount / totalCount,
            color: kColorAccent,
            minHeight: 8,
          ),
        ),
        SizedBox(
          width: 60,
          child: onClose != null
              ? IconButton(
                  onPressed: onClose,
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                )
              : null,
        ),
      ],
    );
  }
}
