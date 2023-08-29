import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingItem {
  final String title;
  final String subtitle;
  final String imagePath;

  OnboardingItem(this.title, this.subtitle, this.imagePath);
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _items = [
    OnboardingItem(
        'Selamat Datang di SEPO',
        'Self Education Programs Of Osteoarthritis. Dengan bangga kami persembahkan aplikasi SEPO. Aplikasi ini dirancang khusus untuk meningkatkan pemahaman tentang osteoarthritis lutut/nyeri lutut.',
        'assets/images/onboard_1.png'),
    OnboardingItem(
        'Manfaat SEPO',
        'SEPO akan menginformasikan tentang penyebab, pencegahan, dan pengobatan nyeri lutut. Anda akan menerima saran gaya hidup, pola makan, dan latihan fisik yang membantu meringankan nyeri lutut.',
        'assets/images/onboard_2.png'),
    OnboardingItem(
        'Terima kasih telah bergabung dengan SEPO',
        'Selesaikan tantangan dan dapatkan HADIAH menarik!',
        'assets/images/onboard_3.png'),
  ];

  late int _page;

  @override
  void initState() {
    _page = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 36),
            PageIndicator(
              currentCount: _page + 1,
              totalCount: _items.length,
              onSkip: () => context.pushNamed('login'),
            ),
            Expanded(
              child: PageView.builder(
                onPageChanged: (value) => setState(() => _page = value),
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  final item = _items[index];
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 80),
                          SizedBox(
                            height: 250,
                            child: Image.asset(item.imagePath),
                          ),
                          const SizedBox(height: 32),
                          Text(
                            item.title,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            item.subtitle,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    Key? key,
    required this.totalCount,
    required this.currentCount,
    this.onSkip,
  }) : super(key: key);

  final int totalCount;
  final int currentCount;
  final VoidCallback? onSkip;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 80,
          child: Center(child: Text('$currentCount/$totalCount')),
        ),
        Expanded(
          child: LinearProgressIndicator(
            value: currentCount / totalCount,
            minHeight: 8,
          ),
        ),
        SizedBox(
          width: 80,
          child: onSkip != null
              ? TextButton(
                  onPressed: onSkip,
                  child: const Text('Lewati'),
                )
              : null,
        ),
      ],
    );
  }
}
