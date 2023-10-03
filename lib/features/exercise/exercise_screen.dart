import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sepo_app/common/constants/colors.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(children: [
            const SizedBox(height: 32),
            Text(
              'Ayo Mulai Langkahmu',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            const _TrainingLevel(),
          ]),
        ),
      ),
    );
  }
}

enum ExerciseLevel {
  beginner,
  normal,
  advance;

  String getLabel() => switch (this) {
        beginner => 'Pemula',
        normal => 'Menengah',
        advance => 'Mahir'
      };

  String getExtraLabel() => switch (this) {
        beginner => 'Latihan dasar',
        normal => 'Latihan ringan',
        advance => 'Latihan berat'
      };

  String getImage() => switch (this) {
        beginner => 'Pemula',
        normal => 'Menengah',
        advance => 'Mahir'
      };

  int getLevelNumber() =>
      switch (this) { beginner => 1, normal => 2, advance => 3 };
}

class _TrainingLevel extends StatelessWidget {
  const _TrainingLevel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: ExerciseLevel.values.map(
        (e) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: _ExerciseLevelCard(
              label: e.getLabel(),
              extraLabel: e.getExtraLabel(),
              image: e.getImage(),
              level: e.getLevelNumber(),
              onClick: () => context.pushNamed('trainingschedule', extra: e),
            ),
          );
        },
      ).toList(),
    );
  }
}

class _ExerciseLevelCard extends StatelessWidget {
  const _ExerciseLevelCard({
    Key? key,
    required this.extraLabel,
    required this.label,
    required this.image,
    required this.level,
    this.onClick,
  }) : super(key: key);

  final String extraLabel;
  final String label;
  final String image;
  final int level;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26), color: Colors.white),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    for (int i = 1; i <= 3; i++)
                      Icon(
                        Icons.emoji_people_rounded,
                        color: i <= level ? kColorPrimary : kColorNeutral100,
                      ),
                  ],
                ),
                const SizedBox(height: 24),
                Text(
                  extraLabel,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.start,
                ),
                Text(
                  label,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const Spacer(),
            const Placeholder(
              color: Colors.grey,
              fallbackWidth: 150,
              fallbackHeight: 150,
            )
          ],
        ),
      ),
    );
  }
}
