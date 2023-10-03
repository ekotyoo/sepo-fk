import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sepo_app/features/auth/data/auth_repository.dart';
import 'package:sepo_app/features/exercise/exercise_schedule_provider.dart';
import 'package:sepo_app/features/exercise/exercise_screen.dart';
import 'package:sepo_app/features/test/presentation/test_list/test_list_screen.dart';

import '../../common/constants/colors.dart';
import '../auth/domain/auth_user.dart';

class ExerciseScheduleScreen extends ConsumerWidget {
  const ExerciseScheduleScreen({Key? key, required this.level})
      : super(key: key);

  final ExerciseLevel level;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exerciseRecordsAsync = ref.watch(getExerciseRecordsProvider);
    final authState = ref.watch(authStateProvider) as SignedIn;
    final currentExerciseDay = authState.currentExerciseDay;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Latihan', style: Theme.of(context).textTheme.titleLarge),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: exerciseRecordsAsync.when(
            data: (exercises) {
              List<ExerciseRecord> firstWeek =
                  exercises.where((element) => element.week == 1).toList();
              List<ExerciseRecord> secondWeek =
                  exercises.where((element) => element.week == 2).toList();
              List<ExerciseRecord> thirdWeek =
                  exercises.where((element) => element.week == 3).toList();
              List<ExerciseRecord> fourthWeek =
                  exercises.where((element) => element.week == 4).toList();

              return ListView(
                children: [
                  const SizedBox(height: 16),
                  _ExerciseProgress(value: currentExerciseDay / 28),
                  const SizedBox(height: 32),
                  _ExerciseSchedule(
                    firstWeek: firstWeek,
                    secondWeek: secondWeek,
                    thirdWeek: thirdWeek,
                    fourthWeek: fourthWeek,
                  ),
                ],
              );
            },
            error: (error, stackTrace) => Center(child: Text(error.toString())),
            loading: () => const LoadingIndicator(),
          ),
        ),
      ),
    );
  }
}

class _ExerciseSchedule extends ConsumerWidget {
  const _ExerciseSchedule(
      {Key? key,
      required this.firstWeek,
      required this.secondWeek,
      required this.thirdWeek,
      required this.fourthWeek})
      : super(key: key);

  final List<ExerciseRecord> firstWeek;
  final List<ExerciseRecord> secondWeek;
  final List<ExerciseRecord> thirdWeek;
  final List<ExerciseRecord> fourthWeek;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider) as SignedIn;
    final currentExerciseDay = authState.currentExerciseDay;
    final currentWeek = currentExerciseDay ~/ 7;

    debugPrint('Current Week $currentWeek');

    return Column(
      children: [
        _ExerciseWeekSchedule(
            week: 1, records: firstWeek, isLocked: (currentWeek + 1) < 1),
        _ExerciseWeekSchedule(
            week: 2, records: secondWeek, isLocked: (currentWeek + 1) < 2),
        _ExerciseWeekSchedule(
            week: 3, records: thirdWeek, isLocked: (currentWeek + 1) < 3),
        _ExerciseWeekSchedule(
            week: 4, records: fourthWeek, isLocked: (currentWeek + 1) < 4),
      ],
    );
  }
}

class _ExerciseWeekSchedule extends ConsumerWidget {
  const _ExerciseWeekSchedule(
      {Key? key,
      required this.week,
      required this.records,
      this.isLocked = true})
      : super(key: key);

  final int week;
  final List<ExerciseRecord> records;
  final bool isLocked;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider) as SignedIn;
    final currentExerciseDay = authState.currentExerciseDay;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Minggu ke-$week',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 250,
          child: GridView.builder(
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisExtent: 100,
              mainAxisSpacing: 16,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              final totalLocked =
                  (index + 1) > (currentExerciseDay % 7) || isLocked;
              return _ScheduleCard(
                day: index == 7 ? null : index + 1,
                isDone: records.any((element) => element.day == index + 1),
                isLocked: totalLocked,
                onClick: () {
                  context.pushNamed(
                    'traininglist',
                    params: {
                      'week': week.toString(),
                      'day': (index + 1).toString(),
                    },
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class _ScheduleCard extends StatelessWidget {
  const _ScheduleCard(
      {Key? key,
      this.day,
      this.isDone = false,
      this.isLocked = false,
      this.onClick})
      : super(key: key);

  final int? day;
  final bool isLocked;
  final bool isDone;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    Color foregroundColor = Colors.black;
    Color backgroundColor = Colors.white;

    if (isLocked) {
      foregroundColor = kColorNeutral100;
      backgroundColor = kColorNeutral10;
    }

    if (isDone) {
      foregroundColor = kColorPrimary;
      backgroundColor = kColorPrimaryTint4;
    }

    final finishWidget = Container(
      height: 100,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kColorPrimaryTint1,
      ),
      child: Image.asset('assets/images/training_trophy.png'),
    );

    return day == null
        ? finishWidget
        : InkWell(
            onTap: isLocked ? null : onClick,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: backgroundColor,
                border: Border.all(
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignInside,
                  color: isDone ? foregroundColor : Colors.transparent,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hari ke',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: foregroundColor),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '$day',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: foregroundColor),
                  ),
                ],
              ),
            ),
          );
  }
}

class _ExerciseProgress extends StatelessWidget {
  const _ExerciseProgress({Key? key, required this.value}) : super(key: key);

  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: kColorGradient2,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  'Progressmu',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        value: value,
                        backgroundColor: kColorPrimaryTint3,
                        color: kColorAccent,
                        strokeWidth: 10,
                      ),
                      Center(
                        child: Text(
                          '${(value * 100).toInt()}%',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  '${(28 * (1 - value)).toInt()} hari tersisa',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white70),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(child: Image.asset('assets/images/training_1.png')),
        ],
      ),
    );
  }
}
