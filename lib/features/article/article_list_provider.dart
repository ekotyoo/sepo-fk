import 'package:SEPO/features/article/data/article_repository.dart';
import 'package:SEPO/features/article/domain/article_list_item.dart';
import 'package:SEPO/features/auth/data/auth_repository.dart';
import 'package:SEPO/features/auth/domain/auth_user.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article_list_provider.g.dart';

@riverpod
Future<List<ArticleListItem>> getArticles(GetArticlesRef ref) async {
  final repo = ref.watch(articleRepositoryProvider);
  final authState = ref.watch(authStateProvider) as SignedIn;
  final result = await repo.getArticles(authState.id);

  final currentExerciseDay = authState.currentExerciseDay;

  int week = 4;
  if (currentExerciseDay >= 1 && currentExerciseDay <= 7) {
    week = 1;
  } else if (currentExerciseDay >= 8 && currentExerciseDay <= 14) {
    week = 2;
  } else if (currentExerciseDay >= 15 && currentExerciseDay <= 21) {
    week = 3;
  }

  return result.fold(
    (l) => [],
    (r) {
      debugPrint(r.toString());
      return r.map((e) => e.copyWith(isLocked: e.week > week)).toList();
    },
  );
}
