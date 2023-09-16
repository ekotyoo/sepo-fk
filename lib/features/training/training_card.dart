import 'package:flutter/material.dart';
import 'package:sepo_app/features/training/training.dart';
import '../../common/constants/colors.dart';

class TrainingCard extends StatelessWidget {
  const TrainingCard({
    Key? key,
    required this.training,
    this.onTap,
  }) : super(key: key);

  final Training training;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
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
                      fallbackHeight: 50,
                      fallbackWidth: 50,
                      child: Row(
                        children: [Icon(Icons.watch_later_rounded), Text('2:12')],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                        child: Column(
                          children: [
                            Text(
                              'mudah',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const Row(
                              children: [
                                Icon(Icons.check_circle),
                                Text('Selesai')
                              ],
                            )
                          ],
                        )
                    ),
                    IconButton(onPressed: onTap, icon: Icon(Icons.play_arrow)),
                  ],
                ),
                const SizedBox(height: 4),
              ],
            ),
          ],
        )
      ),
    );
  }
}
