import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sepo_app/common/constants/colors.dart';
import 'package:sepo_app/common/widgets/sepo_button.dart';
import 'package:sepo_app/features/exercise/exercise_session_controller.dart';

import 'exercise.dart';

class ExerciseSessionScreen extends ConsumerWidget {
  const ExerciseSessionScreen({
    Key? key,
    this.exercises = const [],
    required this.day,
    required this.week,
  }) : super(key: key);

  final List<Exercise> exercises;
  final int day;
  final int week;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(exerciseSessionControllerProvider(exercises));

    ref.listen(
      exerciseSessionControllerProvider(exercises)
          .select((value) => value.isFinished),
      (previous, next) {
        if (next == true) {
          context.pushReplacementNamed(
            'trainingfinish',
            params: {
              'week': week.toString(),
              'day': day.toString(),
            },
          );
        }
      },
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              '${state.currentExerciseIndex + 1} dari ${exercises.length}',
              style: Theme.of(context).textTheme.titleLarge),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Image.network(
                exercises[state.currentExerciseIndex].image,
                height: 250,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 24),
              Text(
                exercises[state.currentExerciseIndex].name,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              if (exercises[state.currentExerciseIndex].type ==
                  ExerciseType.duration)
                Text(
                  state.duration.formatDuration(),
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: kColorPrimary,
                      ),
                ),
              if (exercises[state.currentExerciseIndex].type ==
                  ExerciseType.repetition)
                Text(
                  '${exercises[state.currentExerciseIndex].durationOrRepetition}x',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: kColorPrimary,
                      ),
                ),
              const Spacer(),
              SepoButton(
                disabled: !state.isDone,
                label: 'Selanjutnya',
                onPressed: () {
                  ref
                      .read(
                          exerciseSessionControllerProvider(exercises).notifier)
                      .goToNextExercise();
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
