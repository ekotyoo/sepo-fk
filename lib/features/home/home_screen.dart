import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sepo_app/features/auth/domain/auth_user.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../../common/constants/colors.dart';
import 'home_controller.dart';
import 'package:intl/intl.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                    final authState = data.authState as SignedIn;
                    if (authState.pillCountFilled &&
                        authState.currentConditionFilled &&
                        authState.personalDataFilled) {
                      return [Container()];
                    }
                    return const [
                      SizedBox(height: 24),
                      _DataCompletenessCard()
                    ];
                  },
                  error: (error, stackTrace) => [Container()],
                  loading: () => [Container()],
                ),
                _HomeNote(),
                const SizedBox(height: 24),
                _HomeArticle(),
                const SizedBox(height: 24),
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
              onPressed: () {},
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

class _HomeNote extends StatelessWidget {
  const _HomeNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width - 16 * 2) / 2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Catatan', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        Row(
          children: [
            Container(
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
                              Spacer(),
                              Icon(
                                Icons.star,
                                size: 40,
                                color: kColorAccent,
                              )
                            ],
                          ),
                          Spacer(),
                          Text(
                            '60',
                            style: TextStyle(color: Colors.white, fontSize: 65),
                          )
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
                              Spacer(),
                              Icon(
                                Icons.sunny,
                                size: 40,
                                color: kColorAccent,
                              )
                            ],
                          ),
                          Spacer(),
                          Text(
                            '19',
                            style: TextStyle(color: Colors.white, fontSize: 65),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Nilai Pre Test",
                      style: Theme.of(context).textTheme.titleLarge),
                  const Spacer(),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('Vas',
                              style: Theme.of(context).textTheme.titleMedium),
                          const SizedBox(height: 8),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/vas.png'),
                            maxRadius: 32,
                          ),
                          const SizedBox(height: 8),
                          Text('12',
                              style: Theme.of(context).textTheme.titleLarge),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Text('Nyeri',
                              style: Theme.of(context).textTheme.titleMedium),
                          const SizedBox(height: 8),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/pain.png'),
                            maxRadius: 32,
                          ),
                          const SizedBox(height: 8),
                          Text('82',
                              style: Theme.of(context).textTheme.titleLarge),
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
                          Text('Makanan',
                              style: Theme.of(context).textTheme.titleMedium),
                          const SizedBox(height: 8),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/food.png'),
                            maxRadius: 32,
                          ),
                          const SizedBox(height: 8),
                          Text('65',
                              style: Theme.of(context).textTheme.titleLarge),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Text('Natrium',
                              style: Theme.of(context).textTheme.titleMedium),
                          const SizedBox(height: 8),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/salt.png'),
                            maxRadius: 32,
                          ),
                          const SizedBox(height: 8),
                          Text('64',
                              style: Theme.of(context).textTheme.titleLarge),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _HomeArticle extends StatelessWidget {
  const _HomeArticle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        Text(
                          'Selengkapnya',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.white),
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
              Text(
                '30% materi selesai',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: kColorAccent),
              ),
              const SizedBox(height: 8),
              StepProgressIndicator(
                totalSteps: 100,
                currentStep: 32,
                size: 16,
                padding: 0,
                selectedColor: kColorAccent,
                unselectedColor: kColorPrimaryTint3,
                roundedEdges: Radius.circular(24),
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
              const SizedBox(height: 16),
              Text(
                "Materi baru:",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/article.png'),
                        maxRadius: 32,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.watch_later,
                                size: 16, color: Colors.white70),
                            const SizedBox(width: 4),
                            Text(
                              '2:12',
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
                            Text(
                                'Pertolongan pertama ketika terkena Osteoarthritis ',
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
                                  '10 point',
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
