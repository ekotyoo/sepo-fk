// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$exerciseListHash() => r'4b73b58adb7bb077469a3c9f2fec997bcc886ef2';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [exerciseList].
@ProviderFor(exerciseList)
const exerciseListProvider = ExerciseListFamily();

/// See also [exerciseList].
class ExerciseListFamily extends Family<AsyncValue<List<Exercise>>> {
  /// See also [exerciseList].
  const ExerciseListFamily();

  /// See also [exerciseList].
  ExerciseListProvider call(
    ExerciseLevel level,
    int week,
    int day,
  ) {
    return ExerciseListProvider(
      level,
      week,
      day,
    );
  }

  @override
  ExerciseListProvider getProviderOverride(
    covariant ExerciseListProvider provider,
  ) {
    return call(
      provider.level,
      provider.week,
      provider.day,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'exerciseListProvider';
}

/// See also [exerciseList].
class ExerciseListProvider extends AutoDisposeFutureProvider<List<Exercise>> {
  /// See also [exerciseList].
  ExerciseListProvider(
    ExerciseLevel level,
    int week,
    int day,
  ) : this._internal(
          (ref) => exerciseList(
            ref as ExerciseListRef,
            level,
            week,
            day,
          ),
          from: exerciseListProvider,
          name: r'exerciseListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$exerciseListHash,
          dependencies: ExerciseListFamily._dependencies,
          allTransitiveDependencies:
              ExerciseListFamily._allTransitiveDependencies,
          level: level,
          week: week,
          day: day,
        );

  ExerciseListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.level,
    required this.week,
    required this.day,
  }) : super.internal();

  final ExerciseLevel level;
  final int week;
  final int day;

  @override
  Override overrideWith(
    FutureOr<List<Exercise>> Function(ExerciseListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ExerciseListProvider._internal(
        (ref) => create(ref as ExerciseListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        level: level,
        week: week,
        day: day,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Exercise>> createElement() {
    return _ExerciseListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ExerciseListProvider &&
        other.level == level &&
        other.week == week &&
        other.day == day;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, level.hashCode);
    hash = _SystemHash.combine(hash, week.hashCode);
    hash = _SystemHash.combine(hash, day.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ExerciseListRef on AutoDisposeFutureProviderRef<List<Exercise>> {
  /// The parameter `level` of this provider.
  ExerciseLevel get level;

  /// The parameter `week` of this provider.
  int get week;

  /// The parameter `day` of this provider.
  int get day;
}

class _ExerciseListProviderElement
    extends AutoDisposeFutureProviderElement<List<Exercise>>
    with ExerciseListRef {
  _ExerciseListProviderElement(super.provider);

  @override
  ExerciseLevel get level => (origin as ExerciseListProvider).level;
  @override
  int get week => (origin as ExerciseListProvider).week;
  @override
  int get day => (origin as ExerciseListProvider).day;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
