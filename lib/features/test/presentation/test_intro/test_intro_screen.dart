import 'package:SEPO/features/home/test_score_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:SEPO/common/constants/colors.dart';
import 'package:SEPO/features/test/presentation/test_intro/test_intro_controller.dart';

import '../test_list/test_list_screen.dart';

class TestIntroScreen extends ConsumerWidget {
  const TestIntroScreen({Key? key, required this.testId}) : super(key: key);

  final String testId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(testIntroControllerProvider(testId));

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
                final currentSurvey =
                    state.surveys[state.currentSurveyIndex ?? 0];

                return Column(
                  children: [
                    const SizedBox(height: 32),
                    if (!state.isFinished)
                      _PageIndicator(
                        totalCount: state.surveys.length,
                        currentCount: (state.currentSurveyIndex ?? 0) + 1,
                        onClose: () {
                          context.pop();
                        },
                      ),
                    const SizedBox(height: 32),
                    if (state.isFinished)
                      _TestFinishContent(testName: state.test?.title ?? '-', testId: int.parse(testId)),
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
                              .read(
                                  testIntroControllerProvider(testId).notifier)
                              .initSession();
                          return;
                        }
                        context.pushNamed('session',
                            params: {
                              'testId': testId,
                              'surveyId': currentSurvey.id.toString(),
                            },
                            extra: currentSurvey.name);
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

class _TestFinishContent extends ConsumerWidget {
  const _TestFinishContent({
    Key? key,
    required this.testName,
    required this.testId,
  }) : super(key: key);

  final String testName;
  final int testId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scoreAsync = ref.watch(getTestScoreProvider(testId));

    return Column(
      children: [
        Text(
          'SELESAI',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(
          'Kamu telah menyelesaikan $testName\nKamu mendapatkan:',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.white),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.star, color: Colors.yellow, size: 32),
            const SizedBox(width: 8),
            Text(
              '10 Point',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.yellow),
            ),
          ],
        ),
        const SizedBox(height: 32),
        Image.asset(
          'assets/images/test_finish_badge.png',
          height: 250,
        ),
        const SizedBox(height: 32),
        Text(
          'Skor kamu:',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.white),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(16),
          child: scoreAsync.when(
            data: (data) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('VAS',
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 8),
                    const CircleAvatar(
                      backgroundImage:
                      AssetImage('assets/images/vas.png'),
                      maxRadius: 32,
                    ),
                    const SizedBox(height: 8),
                    Text('${data?.vas ?? '-'}',
                        style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
                Column(
                  children: [
                    Text('Natrium',
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 8),
                    const CircleAvatar(
                      backgroundImage:
                      AssetImage('assets/images/salt.png'),
                      maxRadius: 32,
                    ),
                    const SizedBox(height: 8),
                    Text('${data?.kebutuhanNatrium ?? '-'}',
                        style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
                Column(
                  children: [
                    Text('WOMAC',
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 8),
                    const CircleAvatar(
                      backgroundImage:
                      AssetImage('assets/images/pain.png'),
                      maxRadius: 32,
                    ),
                    const SizedBox(height: 8),
                    Text('${data?.womac ?? '-'}',
                        style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ],
            ),
            error: (error, stackTrace) => Container(),
            loading: () => const LoadingIndicator(),
          ),
        ),
      ],
    );
  }
}
