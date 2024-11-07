import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:SEPO/features/pill_count/presentation/pill_count_provider.dart';

import '../../../common/constants/colors.dart';
import '../../../utils/snackbar_utils.dart';
import '../../assessment/domain/pill_count.dart';
import '../../test/presentation/test_list/test_list_screen.dart';

class PillCountListScreen extends ConsumerWidget {
  const PillCountListScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pillCountsAsync = ref.watch(pillCountsProvider);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pill Count', style: Theme.of(context).textTheme.titleLarge),
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: kColorBackground,
          elevation: 0,
        ),
        body: pillCountsAsync.when(
          data: (data) => _PillCountList(pillCounts: data),
          error: (error, stackTrace) => Container(),
          loading: () => const LoadingIndicator(),
        ),
      ),
    );
  }
}

class _PillCountList extends StatelessWidget {
  const _PillCountList({Key? key, required this.pillCounts}) : super(key: key);

  final List<PillCount> pillCounts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: pillCounts.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final pillCount = pillCounts[index];
        return PillCountCard(
          title: pillCount.name ?? '',
          doneDate: pillCount.doneDate,
          isLocked: pillCount.lockedUntil != null && DateTime.now().compareTo(pillCount.lockedUntil!) < 0,
          onClick: () {
            context.pushNamed('postpillcount', extra: pillCount);
          },
        );
      },
    );
  }
}

class PillCountCard extends StatelessWidget {
  const PillCountCard({
    Key? key,
    required this.title,
    this.doneDate,
    this.isLocked = false,
    this.onClick,
  }) : super(key: key);

  final String title;
  final DateTime? doneDate;
  final bool isLocked;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (doneDate != null) {
          showSnackbar(context, message: 'Pill Count telah selesai dikerjakan');
          return;
        }
        if (isLocked) {
          showSnackbar(context, message: 'Pill Count belum bisa diakses');
          return;
        }
        onClick?.call();
      },
      child: Container(
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kColorPrimary,
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: Colors.white),
                        ),
                        const Spacer(),
                        if (doneDate != null) ...[
                          Text(
                            'Dikerjakan pada:',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.white),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(Icons.calendar_month,
                                  color: Colors.white),
                              const SizedBox(width: 16),
                              Text(
                                DateFormat.yMMMMd().format(doneDate!),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                        if (doneDate == null)
                          Text(
                            'Belum dikerjakan',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.white),
                          )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (isLocked)
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.lock, color: Colors.white),
                      const SizedBox(height: 16),
                      Text(
                        'Pill Count belum bisa diakses',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
