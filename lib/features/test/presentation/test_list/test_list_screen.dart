import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:SEPO/common/constants/colors.dart';
import 'package:SEPO/features/test/domain/test.dart';
import 'package:SEPO/features/test/presentation/test_list/test_provider.dart';
import 'package:SEPO/utils/snackbar_utils.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class TestListScreen extends ConsumerWidget {
  const TestListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final testsAsync = ref.watch(testsProvider);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Test', style: Theme.of(context).textTheme.titleLarge),
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: kColorBackground,
          elevation: 0,
        ),
        body: testsAsync.when(
          data: (data) => _TestList(tests: data),
          error: (error, stackTrace) => Container(),
          loading: () => const LoadingIndicator(),
        ),
      ),
    );
  }
}

class _TestList extends StatelessWidget {
  const _TestList({Key? key, required this.tests}) : super(key: key);

  final List<Test> tests;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: tests.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final test = tests[index];
        return TestCard(
          title: test.title,
          doneDate: test.doneDate,
          isLocked: test.lockedUntil != null && DateTime.now().compareTo(test.lockedUntil!) < 0 ,
          onClick: () {
            context.pushNamed('intro', params: {'testId': test.id.toString()});
          },
        );
      },
    );
  }
}

class TestCard extends StatelessWidget {
  const TestCard({
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
          showSnackbar(context, message: 'Test telah selesai dikerjakan');
          return;
        }
        if (isLocked) {
          showSnackbar(context, message: 'Test belum bisa diakses');
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
                                doneDate.toString(),
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
                        'Test belum bisa diakses',
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
