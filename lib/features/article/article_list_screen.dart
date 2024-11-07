import 'package:SEPO/features/article/article_list_provider.dart';
import 'package:SEPO/features/article/article_progress_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../common/constants/colors.dart';
import '../test/presentation/test_list/test_list_screen.dart';
import 'article_card.dart';

class ArticleListScreen extends StatelessWidget {
  const ArticleListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edukasi'),
          foregroundColor: Colors.white,
          centerTitle: true,
          backgroundColor: const Color(0xFFA1ABFF),
          elevation: 0,
        ),
        body: const Column(
          children: [
            _ArticleHeader(),
            Expanded(child: _ListArticles()),
          ],
        ),
      ),
    );
  }
}

class _ListArticles extends ConsumerWidget {
  const _ListArticles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articlesAsync = ref.watch(getArticlesProvider);

    return articlesAsync.when(
      data: (articles) => ListView.separated(
        padding: const EdgeInsets.all(16),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return ArticleCard(
            article: article,
            onTap: () => context.pushNamed(
              'articledetail',
              params: {'id': '${article.id}'},
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 16),
      ),
      error: (error, stackTrace) => Center(child: Text(error.toString())),
      loading: () => const LoadingIndicator(),
    );
  }
}

class _ArticleHeader extends ConsumerWidget {
  const _ArticleHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progressAsync = ref.watch(getArticleProgressProvider);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        gradient: kColorGradient2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          progressAsync.when(
            data: (data) => Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Proses belajar',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.white),
                    ),
                    Text(
                      '${((data?.progress ?? 0) * 100).toInt()}% materi selesai',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: kColorAccent),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total poinmu',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.white),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: kColorAccent,
                        ),
                        Text(
                          '${data?.score ?? 0} point',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: kColorAccent),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            error: (error, stackTrace) => Container(),
            loading: () => Container(),
          ),
          const SizedBox(height: 16),
          Text(
            'Selesaikan materi belajarmu dan dapatkan poin tambahan untuk setiap materi yang diselesaikan',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(Icons.info, color: Colors.white, size: 16),
              const SizedBox(width: 4),
              Text(
                'Materi baru akan terbuka secara berkala',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
