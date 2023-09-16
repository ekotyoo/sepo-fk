import 'package:flutter/material.dart';
import '../../common/constants/colors.dart';
import 'article.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    Key? key,
    required this.article,
    this.onTap,
  }) : super(key: key);

  final Article article;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: Column(
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
                          article.title,
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
      ),
    );
  }
}
