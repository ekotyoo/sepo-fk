import 'package:flutter/material.dart';
import 'package:sepo_app/features/article/article.dart';
import 'package:sepo_app/features/article/article_card.dart';
import 'package:sepo_app/features/training/training_day.dart';
import 'package:sepo_app/features/training/training_day_card.dart';
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
              _TrainingDayHeader(),
              const SizedBox(height: 24),
              Expanded(child: _ListTrainingDay(),)
            ]
        ),
      ),
    );
  }
}

class _ListTrainingDay extends StatelessWidget {
  const _ListTrainingDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return TrainingDayCard(
          trainingDay: TrainingDay(),
          onTap: () {

          },
        );
      },
      separatorBuilder: (context, index) =>
      const SizedBox(height: 8),
    );
  }
}

class _TrainingDayHeader extends StatelessWidget {
  const _TrainingDayHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.arrow_back),
            Expanded(
                child: Text(
                  'Hari ke 5',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,
                ))
          ],
        ),
        Text('15 rangkaian latihan',textAlign: TextAlign.center,),
      ],
    );
  }
}
