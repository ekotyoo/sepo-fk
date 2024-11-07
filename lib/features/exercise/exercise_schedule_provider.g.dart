// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_schedule_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseRecord _$$_ExerciseRecordFromJson(Map<String, dynamic> json) =>
    _$_ExerciseRecord(
      week: json['week'] as int,
      day: json['day'] as int,
    );

Map<String, dynamic> _$$_ExerciseRecordToJson(_$_ExerciseRecord instance) =>
    <String, dynamic>{
      'week': instance.week,
      'day': instance.day,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getExerciseRecordsHash() =>
    r'dc415f0441c68dd9beed07961fa1c0e18afc03ed';

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

/// See also [getExerciseRecords].
@ProviderFor(getExerciseRecords)
const getExerciseRecordsProvider = GetExerciseRecordsFamily();

/// See also [getExerciseRecords].
class GetExerciseRecordsFamily
    extends Family<AsyncValue<List<ExerciseRecord>>> {
  /// See also [getExerciseRecords].
  const GetExerciseRecordsFamily();

  /// See also [getExerciseRecords].
  GetExerciseRecordsProvider call(
    ExerciseLevel level,
  ) {
    return GetExerciseRecordsProvider(
      level,
    );
  }

  @override
  GetExerciseRecordsProvider getProviderOverride(
    covariant GetExerciseRecordsProvider provider,
  ) {
    return call(
      provider.level,
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
  String? get name => r'getExerciseRecordsProvider';
}

/// See also [getExerciseRecords].
class GetExerciseRecordsProvider
    extends AutoDisposeFutureProvider<List<ExerciseRecord>> {
  /// See also [getExerciseRecords].
  GetExerciseRecordsProvider(
    ExerciseLevel level,
  ) : this._internal(
          (ref) => getExerciseRecords(
            ref as GetExerciseRecordsRef,
            level,
          ),
          from: getExerciseRecordsProvider,
          name: r'getExerciseRecordsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getExerciseRecordsHash,
          dependencies: GetExerciseRecordsFamily._dependencies,
          allTransitiveDependencies:
              GetExerciseRecordsFamily._allTransitiveDependencies,
          level: level,
        );

  GetExerciseRecordsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.level,
  }) : super.internal();

  final ExerciseLevel level;

  @override
  Override overrideWith(
    FutureOr<List<ExerciseRecord>> Function(GetExerciseRecordsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetExerciseRecordsProvider._internal(
        (ref) => create(ref as GetExerciseRecordsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        level: level,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ExerciseRecord>> createElement() {
    return _GetExerciseRecordsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetExerciseRecordsProvider && other.level == level;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, level.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetExerciseRecordsRef
    on AutoDisposeFutureProviderRef<List<ExerciseRecord>> {
  /// The parameter `level` of this provider.
  ExerciseLevel get level;
}

class _GetExerciseRecordsProviderElement
    extends AutoDisposeFutureProviderElement<List<ExerciseRecord>>
    with GetExerciseRecordsRef {
  _GetExerciseRecordsProviderElement(super.provider);

  @override
  ExerciseLevel get level => (origin as GetExerciseRecordsProvider).level;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
