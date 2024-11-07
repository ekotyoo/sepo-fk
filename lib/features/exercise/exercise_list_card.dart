import 'package:flutter/material.dart';

import 'exercise.dart';

class ExerciseListCard extends StatelessWidget {
  const ExerciseListCard({
    Key? key,
    required this.training,
    this.onTap,
  }) : super(key: key);

  final Exercise training;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    String durationOrRepetitionText = switch (training.type) {
      ExerciseType.repetition => '${training.durationOrRepetition} Kali',
      ExerciseType.duration => '${training.durationOrRepetition} Detik',
    };

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  training.image,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      training.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      durationOrRepetitionText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
