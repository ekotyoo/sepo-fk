import 'package:flutter/material.dart';
import '../../common/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 24),
                _HomeHeader(),
                const SizedBox(height: 24),
                _DataCompletenessCard(),
                const SizedBox(height: 24),
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

class _DataCompletenessCard extends StatelessWidget {
  const _DataCompletenessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kColorPrimary,
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
                    backgroundColor: Colors.grey,
                    color: Colors.yellow,
                    strokeWidth: 10,
                  ),
                  Center(
                    child: Text(
                      '50%',
                      style: Theme.of(context).textTheme.headlineMedium,
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
                      .titleMedium
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  'Data ini untuk menilai dan memantau kondisimu',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 8),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                  ),
                  child: const Row(
                    children: [
                      Expanded(child: Text('Cek Kelengkapan')),
                      Icon(Icons.chevron_right_rounded)
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

class _HomeHeader extends StatelessWidget {
  const _HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.sunny),
            const SizedBox(width: 8),
            Expanded(child: Text('Jum, 02 Mei')),
            Icon(Icons.notifications)
          ],
        ),
        const SizedBox(height: 8),
        Text('Hi,Wira', style: Theme.of(context).textTheme.headlineMedium),
      ],
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
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: kColorPrimary),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Poin kamu',
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              ),
                              Spacer(),
                              Icon(Icons.star, size: 45,)
                            ],
                          ),
                          Spacer(),
                          Text(
                            '60',
                            style: TextStyle(color: Colors.white, fontSize: 65
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: kColorSecondary),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Latihan hari ke',
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              ),
                              Spacer(),
                              Icon(Icons.sunny, size: 45,)
                            ],
                          ),
                          Spacer(),
                          Text(
                            '19',
                            style: TextStyle(color: Colors.white, fontSize: 65
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Container(
              height: width * 2,
              width: width - 6,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Text("Nilai Pre Test")
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
      children: [
        Text('Artikel Edukasi', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        Container(
          height: 200,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: kColorPrimary,
          ),
        ),
      ],
    );
  }
}
