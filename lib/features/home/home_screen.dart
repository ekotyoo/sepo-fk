import 'package:SEPO/features/article/article_card.dart';
import 'package:SEPO/features/home/test_score_provider.dart';
import 'package:SEPO/features/test/presentation/test_list/test_list_screen.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:SEPO/features/auth/domain/auth_user.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../../common/constants/colors.dart';
import '../article/article_progress_provider.dart';
import '../article/domain/article_list_item.dart';
import '../auth/data/auth_repository.dart';
import '../notification/data/notification_repository.dart';
import 'home_controller.dart';
import 'package:intl/intl.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  Future<void> initNotificationToken() async {
    final firebaseMessaging = FirebaseMessaging.instance;
    final token = await firebaseMessaging.getToken();
    final authState = ref.read(authStateProvider) as SignedIn;

    if (token != null) {
      ref
          .read(notificationRepositoryProvider)
          .sendDeviceToken(token, authState.id);
    }

    firebaseMessaging.onTokenRefresh.listen((newToken) {
      ref
          .read(notificationRepositoryProvider)
          .sendDeviceToken(newToken, authState.id);
    });
  }

  @override
  void initState() {
    super.initState();
    initNotificationToken();
  }

  @override
  Widget build(BuildContext context) {
    final stateAsync = ref.watch(homeControllerProvider);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 24),
                const _HomeHeader(),
                const SizedBox(height: 24),
                ...stateAsync.when(
                  data: (data) {
                    return [
                      _HomeNote(testId: data.testId),
                    ];
                  },
                  error: (error, stackTrace) => [Container()],
                  loading: () => [
                    const SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: LoadingIndicator(),
                    )
                  ],
                ),
                const SizedBox(height: 24),
                const _HomeArticle(),
                const SizedBox(height: 24),
                const _HomePoster(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _HomeHeader extends ConsumerWidget {
  const _HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(homeControllerProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.sunny, color: kColorPrimary, size: 32),
            const SizedBox(width: 8),
            Expanded(
              child: stateAsync.when(
                data: (data) => Text(
                  DateFormat('EEE, MMM d').format(data.currentDate),
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: kColorPrimary),
                ),
                error: (error, stackTrace) => Container(),
                loading: () => Container(),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.notifications, size: 32),
              onPressed: () => context.pushNamed('notification'),
              color: kColorPrimary,
            )
          ],
        ),
        const SizedBox(height: 8),
        stateAsync.when(
          data: (data) {
            final user = data.authState as SignedIn;
            final name = user.name.split(' ').first;
            return Text('Hi, $name',
                style: Theme.of(context).textTheme.headlineMedium);
          },
          error: (error, stackTrace) => Text('Hi, User',
              style: Theme.of(context).textTheme.headlineMedium),
          loading: () => Text('Hi, User',
              style: Theme.of(context).textTheme.headlineMedium),
        ),
      ],
    );
  }
}

class _DataCompletenessCard extends StatelessWidget {
  const _DataCompletenessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: kColorGradient2,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  const CircularProgressIndicator(
                    value: .5,
                    backgroundColor: kColorPrimaryTint3,
                    color: kColorAccent,
                    strokeWidth: 10,
                  ),
                  Center(
                    child: Text(
                      '50%',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kelengkapan Data',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  'Data ini untuk menilai dan memantau kondisimu',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white70),
                ),
                const SizedBox(height: 8),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Cek Kelengkapan',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: kColorAccent),
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right_rounded,
                        color: kColorAccent,
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _HomeNote extends ConsumerWidget {
  const _HomeNote({Key? key, this.testId}) : super(key: key);

  final int? testId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = (MediaQuery.of(context).size.width - 16 * 2) / 2;

    final authState = ref.watch(authStateProvider) as SignedIn;

    final progressAsync = ref.watch(getArticleProgressProvider);
    final testScoreAsync = ref.watch(getTestScoreProvider(testId));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Catatan', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        Row(
          children: [
            SizedBox(
              height: width * 2,
              width: width - 6,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: kColorGradient3,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Poin \nkamu',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(color: Colors.white),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.star,
                                size: 40,
                                color: kColorAccent,
                              )
                            ],
                          ),
                          const Spacer(),
                          progressAsync.when(
                            data: (data) => Text(
                              '${data?.score ?? 0}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 65),
                            ),
                            error: (error, stackTrace) => Container(),
                            loading: () => Container(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: kColorGradient2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Latihan \nhari ke',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(color: Colors.white),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.sunny,
                                size: 40,
                                color: kColorAccent,
                              )
                            ],
                          ),
                          const Spacer(),
                          Text(
                            '${authState.currentExerciseDay}',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 65),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: width * 2,
              width: width - 6,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.white),
              child: testScoreAsync.when(
                data: (data) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Nilai Pre Test",
                          style: Theme.of(context).textTheme.titleLarge),
                      const Spacer(),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('VAS',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              const SizedBox(height: 8),
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/vas.png'),
                                maxRadius: 32,
                              ),
                              const SizedBox(height: 8),
                              Text('${data?.vas ?? '-'}',
                                  style:
                                      Theme.of(context).textTheme.titleLarge),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              Text('WOMAC',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              const SizedBox(height: 8),
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/pain.png'),
                                maxRadius: 32,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${data?.womac ?? '-'}',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Natrium',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: 8),
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/salt.png'),
                                maxRadius: 32,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${data?.kebutuhanNatrium ?? '-'}',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  );
                },
                error: (error, stackTrace) => Container(),
                loading: () => Container(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _HomeArticle extends ConsumerWidget {
  const _HomeArticle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progressAsync = ref.watch(getArticleProgressProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Artikel Edukasi', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: kColorGradient2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Proses belajar",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white70),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                    ),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () => context.pushNamed('article'),
                          child: Text(
                            'Selengkapnya',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                        const Icon(
                          Icons.chevron_right_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              progressAsync.when(
                data: (data) {
                  if (data == null) return Container();
                  return _ArticleProgressContent(
                    article: data.nextArticle,
                    progress: data.progress,
                  );
                },
                error: (error, stackTrace) => Text(error.toString()),
                loading: () => const LoadingIndicator(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ArticleProgressContent extends StatelessWidget {
  const _ArticleProgressContent(
      {Key? key, required this.progress, this.article})
      : super(key: key);

  final double progress;
  final ArticleListItem? article;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${(progress * 100).toInt()}% materi selesai',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: kColorAccent),
        ),
        const SizedBox(height: 8),
        StepProgressIndicator(
          totalSteps: 100,
          currentStep: (progress * 100).toInt(),
          size: 16,
          padding: 0,
          selectedColor: kColorAccent,
          unselectedColor: kColorPrimaryTint3,
          roundedEdges: const Radius.circular(24),
        ),
        const SizedBox(height: 8),
        Text(
          "Selesaikan belajarmu dan dapatkan poin tambahan!",
          textAlign: TextAlign.justify,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Colors.white70),
        ),
        if (article != null) const SizedBox(height: 16),
        if (article != null)
          Text(
            "Materi baru:",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white),
          ),
        const SizedBox(height: 8),
        if (article != null)
          ArticleCard(
            article: article!,
            onTap: () => context.pushNamed(
              'articledetail',
              params: {'id': '${article!.id}'},
            ),
          ),
      ],
    );
  }
}

class _HomePoster extends StatelessWidget {
  const _HomePoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Poster Edukasi', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        _PosterCard(
          title: 'Kandungan natrium pada produk kemasan',
          image: 'assets/images/poster_natrium_pada_kemasan.png',
          onClick: () {
            context.pushNamed('poster',
                extra: 'assets/images/poster_natrium_pada_makanan.png');
          },
        ),
        const SizedBox(height: 8),
        _PosterCard(
          title: 'Kandungan natrium pada produk bahan alam',
          image: 'assets/images/poster_natrium_pada_makanan.png',
          onClick: () {
            context.pushNamed('poster',
                extra: 'assets/images/poster_natrium_pada_kemasan.png');
          },
        ),
        const SizedBox(height: 8),
        _PosterCard(
          title: 'Olahraga "Sendi Lutut"',
          image: 'assets/images/poster_latihan_pasian_oa.png',
          onClick: () {
            context.pushNamed('poster',
                extra: 'assets/images/poster_latihan_pasian_oa.png');
          },
        ),
      ],
    );
  }
}

class _PosterCard extends StatelessWidget {
  const _PosterCard({
    Key? key,
    required this.title,
    required this.image,
    this.onClick,
  }) : super(key: key);
  final String title;
  final String image;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 136,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(image,
                  height: 120, width: 100, fit: BoxFit.cover),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Text('Lihat selengkapnya'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
