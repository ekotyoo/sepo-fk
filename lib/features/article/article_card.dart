import 'package:SEPO/features/article/domain/article_list_item.dart';
import 'package:SEPO/utils/int_extenstion.dart';
import 'package:SEPO/utils/snackbar_utils.dart';
import 'package:flutter/material.dart';
import '../../common/constants/colors.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    Key? key,
    required this.article,
    this.onTap,
  }) : super(key: key);

  final ArticleListItem article;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: article.isLocked
          ? () => showSnackbar(
                context,
                message: 'Konten edukasi belum dapat diakses',
              )
          : onTap,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
              color: Colors.white,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      const AssetImage('assets/images/article.png'),
                  maxRadius: 32,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.watch_later,
                          size: 16, color: Colors.white70),
                      const SizedBox(width: 4),
                      Text(
                        article.duration.toTimeString(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(article.title,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleMedium),
                      const SizedBox(height: 8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.star,
                            color: kColorSecondary,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${article.point} point',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: kColorSecondary),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Icon(Icons.play_arrow, size: 40)
              ],
            ),
          ),
          if (article.isLocked)
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(48),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
