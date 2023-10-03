import 'package:flutter/material.dart';
import 'package:sepo_app/features/article/article.dart';
import 'package:sepo_app/features/article/article_card.dart';
import '../../common/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
            children: [
              const SizedBox(height: 24),
              _ArticleHeader(),
              const SizedBox(height: 24),
              Expanded(child: _ListArticles(),)
            ]
        ),
      ),
    );
  }
}

class _ListArticles extends StatelessWidget {
  const _ListArticles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return ArticleCard(
          article: Article(),
          onTap: () {

          },
        );
      },
      separatorBuilder: (context, index) =>
      const SizedBox(height: 8),
    );
  }
}
// Article Card
// Container(
//   padding: const EdgeInsets.all(20),
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(50),
//     color: Colors.white,
//   ),
//   child: Row(
//     children: [
//       Placeholder(
//         color: Colors.grey,
//         fallbackHeight: 50,
//         fallbackWidth: 50,
//         child: Row(
//           children: [Icon(Icons.watch_later_rounded), Text('2:12')],
//         ),
//       ),
//       Expanded(child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//               'Pertolongan pertama ketika terkena Oseteoarhritis',
//               // 'Pertolongan pertama ketika terkena Oseteoarhritis',
//               maxLines: 2,
//               softWrap: true,
//               overflow: TextOverflow.ellipsis
//           ),
//           Row(
//             children: [Icon(Icons.check_circle), Text('Selesai')],
//           ),
//         ],)
//       ),
//       Icon(Icons.play_arrow)
//     ],
//   ),
// ),

class _ArticleHeader extends StatelessWidget {
  const _ArticleHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.arrow_back),
            Expanded(
                child: Text(
                  'Edukasi',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,
                ))
          ],
        ),
        Row(
          children: [
            Column(
              children: [Text('Proses belajar'), Text('30% materi selesai')],
            ),
            Spacer(),
            Column(
              children: [
                Text('Total poinmu'),
                Row(
                  children: [Icon(Icons.star), Text('60 point')],
                )
              ],
            )
          ],
        ),
        Text(
            'Selesaikan materi belajarmu dan dapatkan poin tambahan untuk setiap materi yang diselesaikan'),
        Row(
          children: [
            Icon(Icons.warning_rounded),
            Text('Materi baru akan terbuka secara berkala')
          ],
        )
      ],
    );
  }
}
