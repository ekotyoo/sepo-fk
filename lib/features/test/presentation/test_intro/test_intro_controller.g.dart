// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_intro_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$testIntroControllerHash() =>
    r'ca5544208ba93c767d52c4fc21102414c18ecc66';

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

abstract class _$TestIntroController
    extends BuildlessAutoDisposeAsyncNotifier<TestIntroState> {
  late final String testId;

  FutureOr<TestIntroState> build(
    String testId,
  );
}

/// See also [TestIntroController].
@ProviderFor(TestIntroController)
const testIntroControllerProvider = TestIntroControllerFamily();

/// See also [TestIntroController].
class TestIntroControllerFamily extends Family<AsyncValue<TestIntroState>> {
  /// See also [TestIntroController].
  const TestIntroControllerFamily();

  /// See also [TestIntroController].
  TestIntroControllerProvider call(
    String testId,
  ) {
    return TestIntroControllerProvider(
      testId,
    );
  }

  @override
  TestIntroControllerProvider getProviderOverride(
    covariant TestIntroControllerProvider provider,
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
  String? get name => r'testIntroControllerProvider';
}

/// See also [TestIntroController].
class TestIntroControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    TestIntroController, TestIntroState> {
  /// See also [TestIntroController].
  TestIntroControllerProvider(
    String testId,
  ) : this._internal(
          () => TestIntroController()..testId = testId,
          from: testIntroControllerProvider,
          name: r'testIntroControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$testIntroControllerHash,
          dependencies: TestIntroControllerFamily._dependencies,
          allTransitiveDependencies:
              TestIntroControllerFamily._allTransitiveDependencies,
          testId: testId,
        );

  TestIntroControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.testId,
  }) : super.internal();

  final String testId;

  @override
  FutureOr<TestIntroState> runNotifierBuild(
    covariant TestIntroController notifier,
  ) {
    return notifier.build(
      testId,
    );
  }

  @override
  Override overrideWith(TestIntroController Function() create) {
    return ProviderOverride(
      origin: this,
      override: TestIntroControllerProvider._internal(
        () => create()..testId = testId,
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
  AutoDisposeAsyncNotifierProviderElement<TestIntroController, TestIntroState>
      createElement() {
    return _TestIntroControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TestIntroControllerProvider && other.testId == testId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, testId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TestIntroControllerRef
    on AutoDisposeAsyncNotifierProviderRef<TestIntroState> {
  /// The parameter `testId` of this provider.
  String get testId;
}

class _TestIntroControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TestIntroController,
        TestIntroState> with TestIntroControllerRef {
  _TestIntroControllerProviderElement(super.provider);

  @override
  String get testId => (origin as TestIntroControllerProvider).testId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
