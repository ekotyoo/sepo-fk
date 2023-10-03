import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sepo_app/common/constants/colors.dart';
import 'package:sepo_app/common/widgets/sepo_button.dart';

import 'exercise_finish_controller.dart';

class ExerciseFinishScreen extends ConsumerStatefulWidget {
  const ExerciseFinishScreen({
    Key? key,
    required this.day,
    required this.week,
  }) : super(key: key);

  final int day;
  final int week;

  @override
  ConsumerState createState() => _ExerciseFinishScreenState();
}

class _ExerciseFinishScreenState extends ConsumerState<ExerciseFinishScreen> {
  @override
  void initState() {
    Future(() {
      ref
          .read(exerciseFinishControllerProvider.notifier)
          .onSubmit(widget.week, widget.day);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(exerciseFinishControllerProvider);

    return SafeArea(
      child: Container(
        color: kColorPrimaryTint1,
        child: Column(
          children: [
            Image.asset(
              'assets/images/training_finish.png',
              height: 500,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: state.errorMessage != null
                  ? SepoButton(
                      disabled: state.isLoading,
                      loading: state.isLoading,
                      onPressed: () {
                        ref
                            .read(exerciseFinishControllerProvider
                                .notifier)
                            .onSubmit(widget.week, widget.day);
                      },
                      label: 'Coba Lagi',
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kColorPrimaryTint4,
                        foregroundColor: kColorPrimary,
                      ),
                    )
                  : SepoButton(
                      disabled: state.isLoading,
                      loading: state.isLoading,
                      onPressed: () {
                        context.pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kColorPrimaryTint4,
                        foregroundColor: kColorPrimary,
                      ),
                      label: 'Selanjutnya',
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
