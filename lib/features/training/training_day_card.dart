import 'package:flutter/material.dart';
import 'package:sepo_app/features/training/training_day.dart';
import '../../common/constants/colors.dart';

class TrainingDayCard extends StatelessWidget {
  const TrainingDayCard({
    Key? key,
    required this.trainingDay,
    this.onTap,
  }) : super(key: key);

  final TrainingDay trainingDay;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Placeholder(
                        color: Colors.grey,
                        fallbackHeight: 100,
                        fallbackWidth: 100,
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            trainingDay.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            trainingDay.duration,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 4),
                ],
              ),
            ],
          )),
    );
  }
}
