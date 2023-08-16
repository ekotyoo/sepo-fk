import 'package:flutter/material.dart';

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
    OnboardingItem('title-1', 'subtitle-1', 'assets/images/onboard_1.png'),
    OnboardingItem('title-2', 'subtitle-2', 'assets/images/onboard_2.png'),
    OnboardingItem('title-3', 'subtitle-3', 'assets/images/onboard_3.png'),
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
              onSkip: () {},
            ),
            Expanded(
              child: PageView.builder(
                onPageChanged: (value) => setState(() => _page = value),
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  final item = _items[index];
                  return Center(
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
                        ),
                        const SizedBox(height: 8),
                        Text(
                          item.subtitle,
                        ),
                      ],
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
  const PageIndicator(
      {Key? key,
      required this.totalCount,
      required this.currentCount,
      this.onSkip})
      : super(key: key);

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
          child: TextButton(
            onPressed: onSkip,
            child: const Text('Lewati'),
          ),
        ),
      ],
    );
  }
}
