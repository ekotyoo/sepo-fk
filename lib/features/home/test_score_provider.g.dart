// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_score_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getTestScoreHash() => r'1d990ce1954a147c2dd6946c1b6045a58ce63729';

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

/// See also [getTestScore].
@ProviderFor(getTestScore)
const getTestScoreProvider = GetTestScoreFamily();

/// See also [getTestScore].
class GetTestScoreFamily extends Family<AsyncValue<TestScore?>> {
  /// See also [getTestScore].
  const GetTestScoreFamily();

  /// See also [getTestScore].
  GetTestScoreProvider call(
    int? testId,
  ) {
    return GetTestScoreProvider(
      testId,
    );
  }

  @override
  GetTestScoreProvider getProviderOverride(
    covariant GetTestScoreProvider provider,
  ) {
    return call(
      provider.testId,
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
  String? get name => r'getTestScoreProvider';
}

/// See also [getTestScore].
class GetTestScoreProvider extends AutoDisposeFutureProvider<TestScore?> {
  /// See also [getTestScore].
  GetTestScoreProvider(
    int? testId,
  ) : this._internal(
          (ref) => getTestScore(
            ref as GetTestScoreRef,
            testId,
          ),
          from: getTestScoreProvider,
          name: r'getTestScoreProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getTestScoreHash,
          dependencies: GetTestScoreFamily._dependencies,
          allTransitiveDependencies:
              GetTestScoreFamily._allTransitiveDependencies,
          testId: testId,
        );

  GetTestScoreProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.testId,
  }) : super.internal();

  final int? testId;

  @override
  Override overrideWith(
    FutureOr<TestScore?> Function(GetTestScoreRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetTestScoreProvider._internal(
        (ref) => create(ref as GetTestScoreRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        testId: testId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<TestScore?> createElement() {
    return _GetTestScoreProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetTestScoreProvider && other.testId == testId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, testId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetTestScoreRef on AutoDisposeFutureProviderRef<TestScore?> {
  /// The parameter `testId` of this provider.
  int? get testId;
}

class _GetTestScoreProviderElement
    extends AutoDisposeFutureProviderElement<TestScore?> with GetTestScoreRef {
  _GetTestScoreProviderElement(super.provider);

  @override
  int? get testId => (origin as GetTestScoreProvider).testId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
