import 'package:SEPO/features/article/article_list_provider.dart';
import 'package:SEPO/features/article/article_progress_provider.dart';
import 'package:SEPO/features/article/data/article_repository.dart';
import 'package:SEPO/features/test/presentation/test_list/test_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../common/constants/colors.dart';
import 'article_detail_provider.dart';

class ArticleDetailScreen extends ConsumerWidget {
  const ArticleDetailScreen({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articleAsync = ref.watch(getArticleProvider(id));

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: kColorBackground,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: articleAsync.when(
            data: (article) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                Text(article.title,
                    style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 24),
                MyVideoPlayer(
                  url: article.video,
                ),
                const SizedBox(height: 24),
                Text(
                  'Transkrip',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 24),
                Text(
                  article.transcript,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            error: (error, stackTrace) => Center(child: Text(error.toString())),
            loading: () => const LoadingIndicator(),
          ),
        ),
      ),
    );
  }
}

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({
    Key? key,
    required this.url,
    this.onVideoEnded,
  }) : super(key: key);

  final String url;
  final VoidCallback? onVideoEnded;

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.url)!,
      flags: const YoutubePlayerFlags(autoPlay: true),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      onEnded: (_) => widget.onVideoEnded?.call(),
    );
  }
}
