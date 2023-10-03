// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_session_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$exerciseSessionControllerHash() =>
    r'45846954a104711f615adba0f7920ac79f6ded72';

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

abstract class _$ExerciseSessionController
    extends BuildlessAutoDisposeNotifier<ExerciseSessionState> {
  late final List<Exercise> exercises;

  ExerciseSessionState build(
    List<Exercise> exercises,
  );
}

/// See also [ExerciseSessionController].
@ProviderFor(ExerciseSessionController)
const exerciseSessionControllerProvider = ExerciseSessionControllerFamily();

/// See also [ExerciseSessionController].
class ExerciseSessionControllerFamily extends Family<ExerciseSessionState> {
  /// See also [ExerciseSessionController].
  const ExerciseSessionControllerFamily();

  /// See also [ExerciseSessionController].
  ExerciseSessionControllerProvider call(
    List<Exercise> exercises,
  ) {
    return ExerciseSessionControllerProvider(
      exercises,
    );
  }

  @override
  ExerciseSessionControllerProvider getProviderOverride(
    covariant ExerciseSessionControllerProvider provider,
  ) {
    return call(
      provider.exercises,
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
  String? get name => r'exerciseSessionControllerProvider';
}

/// See also [ExerciseSessionController].
class ExerciseSessionControllerProvider extends AutoDisposeNotifierProviderImpl<
    ExerciseSessionController, ExerciseSessionState> {
  /// See also [ExerciseSessionController].
  ExerciseSessionControllerProvider(
    List<Exercise> exercises,
  ) : this._internal(
          () => ExerciseSessionController()..exercises = exercises,
          from: exerciseSessionControllerProvider,
          name: r'exerciseSessionControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$exerciseSessionControllerHash,
          dependencies: ExerciseSessionControllerFamily._dependencies,
          allTransitiveDependencies:
              ExerciseSessionControllerFamily._allTransitiveDependencies,
          exercises: exercises,
        );

  ExerciseSessionControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.exercises,
  }) : super.internal();

  final List<Exercise> exercises;

  @override
  ExerciseSessionState runNotifierBuild(
    covariant ExerciseSessionController notifier,
  ) {
    return notifier.build(
      exercises,
    );
  }

  @override
  Override overrideWith(ExerciseSessionController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ExerciseSessionControllerProvider._internal(
        () => create()..exercises = exercises,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        exercises: exercises,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ExerciseSessionController,
      ExerciseSessionState> createElement() {
    return _ExerciseSessionControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ExerciseSessionControllerProvider &&
        other.exercises == exercises;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, exercises.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ExerciseSessionControllerRef
    on AutoDisposeNotifierProviderRef<ExerciseSessionState> {
  /// The parameter `exercises` of this provider.
  List<Exercise> get exercises;
}

class _ExerciseSessionControllerProviderElement
    extends AutoDisposeNotifierProviderElement<ExerciseSessionController,
        ExerciseSessionState> with ExerciseSessionControllerRef {
  _ExerciseSessionControllerProviderElement(super.provider);

  @override
  List<Exercise> get exercises =>
      (origin as ExerciseSessionControllerProvider).exercises;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
