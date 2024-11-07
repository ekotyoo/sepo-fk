import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:SEPO/common/widgets/sepo_button.dart';
import 'package:SEPO/features/exercise/exercise_list_card.dart';
import 'package:SEPO/features/exercise/exercise_list_provider.dart';
import 'package:SEPO/features/test/presentation/test_list/test_list_screen.dart';

import 'exercise.dart';
import 'exercise_screen.dart';

class ExerciseListScreen extends ConsumerWidget {
  const ExerciseListScreen({
    Key? key,
    required this.level,
    required this.week,
    required this.day,
  }) : super(key: key);

  final ExerciseLevel level;
  final int week;
  final int day;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exercisesAsync = ref.watch(exerciseListProvider(level, week, day));

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Latihan',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: exercisesAsync.when(
          data: (exercises) => Column(
            children: [
              const SizedBox(height: 16),
              Expanded(
                child: _ExerciseList(
                  trainings: exercises,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SepoButton(
                  label: 'Mulai Latihan',
                  onPressed: () {
                    context.pushNamed(
                      'exercisesession',
                      params: {
                        'week': week.toString(),
                        'day': day.toString(),
                      },
                      extra: exercises,
                    );
                  },
                ),
              ),
            ],
          ),
          error: (error, stackTrace) => Center(child: Text(error.toString())),
          loading: () => const LoadingIndicator(),
        ),
      ),
    );
  }
}

class _ExerciseList extends StatelessWidget {
  const _ExerciseList({Key? key, this.trainings = const []}) : super(key: key);

  final List<Exercise> trainings;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: trainings.length,
      itemBuilder: (context, index) {
        return ExerciseListCard(
          training: trainings[index],
          onTap: null,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 8),
    );
  }
}
