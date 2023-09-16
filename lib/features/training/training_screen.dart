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
          child: ListView(children: [
            const SizedBox(height: 24),
            Text(
              'Ayo Mulai Langkahmu',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            _TrainingLevel(),
            const SizedBox(height: 24),
          ]),
        ),
      ),
    );
  }
}

class _TrainingLevel extends StatelessWidget {
  const _TrainingLevel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(width: 12),
        Container(
          padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26), color: Colors.white),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.emoji_people_rounded),
                      Icon(Icons.emoji_people_rounded),
                      Icon(Icons.emoji_people_rounded)
                    ],
                  ),
                  Text(
                      'Latihan dasar',
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.start
                  ),
                  Text(
                    'Pemula',
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              Spacer(),
              Placeholder(
                color: Colors.grey,
                fallbackWidth: 150,
                fallbackHeight: 150,
              )
            ],
          ),
        ),
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26), color: Colors.white),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.emoji_people_rounded),
                      Icon(Icons.emoji_people_rounded),
                      Icon(Icons.emoji_people_rounded)
                    ],
                  ),
                  Text(
                      'Latihan ringan',
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.start
                  ),
                  Text(
                    'Menengah',
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              Spacer(),
              Placeholder(
                color: Colors.grey,
                fallbackWidth: 150,
                fallbackHeight: 150,
              )
            ],
          ),
        ),
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26), color: Colors.white),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.emoji_people_rounded),
                      Icon(Icons.emoji_people_rounded),
                      Icon(Icons.emoji_people_rounded)
                    ],
                  ),
                  Text(
                      'Latihan berat',
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.start
                  ),
                  Text(
                    'Mahir',
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              Spacer(),
              Placeholder(
                color: Colors.grey,
                fallbackWidth: 150,
                fallbackHeight: 150,
              )
            ],
          ),
        )
      ],
    );
  }
}
