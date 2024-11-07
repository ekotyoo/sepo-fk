import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:SEPO/common/constants/colors.dart';

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
  @JsonValue('beginner')
  beginner,
  @JsonValue('normal')
  normal,
  @JsonValue('advance')
  advance;

  String getValue() => switch (this) {
        beginner => 'beginner',
        normal => 'normal',
        advance => 'advance'
      };

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
        beginner => 'assets/images/training_type_beginner.png',
        normal => 'assets/images/training_type_normal.png',
        advance => 'assets/images/training_type_advance.png'
      };

  int getLevelNumber() =>
      switch (this) { beginner => 1, normal => 2, advance => 3 };

  Color getColor() => switch (this) {
        beginner => const Color(0xFF96EEC9),
        normal => const Color(0xFFDEE68C),
        advance => const Color(0xFFEC8E8E)
      };
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
              color: e.getColor(),
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
    this.color,
  }) : super(key: key);

  final String extraLabel;
  final String label;
  final String image;
  final int level;
  final VoidCallback? onClick;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(26),
          child: Stack(
            fit: StackFit.loose,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
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
                                color: i <= level
                                    ? kColorPrimary
                                    : kColorNeutral100,
                              ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        const Spacer(),
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
                  ],
                ),
              ),
              Positioned(
                bottom: -30,
                right: -50,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: color,
                  ),
                ),
              ),
              Positioned(
                bottom: -30,
                right: -30,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    image,
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
