// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_session_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$testSessionControllerHash() =>
    r'25002016277f187e5d3cccd37b9c84bf2cdd140d';

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

abstract class _$TestSessionController
    extends BuildlessAutoDisposeAsyncNotifier<TestSessionState> {
  late final String testId;
  late final String surveyId;

  Future<TestSessionState> build(
    String testId,
    String surveyId,
  );
}

/// See also [TestSessionController].
@ProviderFor(TestSessionController)
const testSessionControllerProvider = TestSessionControllerFamily();

/// See also [TestSessionController].
class TestSessionControllerFamily extends Family<AsyncValue<TestSessionState>> {
  /// See also [TestSessionController].
  const TestSessionControllerFamily();

  /// See also [TestSessionController].
  TestSessionControllerProvider call(
    String testId,
    String surveyId,
  ) {
    return TestSessionControllerProvider(
      testId,
      surveyId,
    );
  }

  @override
  TestSessionControllerProvider getProviderOverride(
    covariant TestSessionControllerProvider provider,
  ) {
    return call(
      provider.testId,
      provider.surveyId,
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
  String? get name => r'testSessionControllerProvider';
}

/// See also [TestSessionController].
class TestSessionControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TestSessionController,
        TestSessionState> {
  /// See also [TestSessionController].
  TestSessionControllerProvider(
    String testId,
    String surveyId,
  ) : this._internal(
          () => TestSessionController()
            ..testId = testId
            ..surveyId = surveyId,
          from: testSessionControllerProvider,
          name: r'testSessionControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$testSessionControllerHash,
          dependencies: TestSessionControllerFamily._dependencies,
          allTransitiveDependencies:
              TestSessionControllerFamily._allTransitiveDependencies,
          testId: testId,
          surveyId: surveyId,
        );

  TestSessionControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.testId,
    required this.surveyId,
  }) : super.internal();

  final String testId;
  final String surveyId;

  @override
  Future<TestSessionState> runNotifierBuild(
    covariant TestSessionController notifier,
  ) {
    return notifier.build(
      testId,
      surveyId,
    );
  }

  @override
  Override overrideWith(TestSessionController Function() create) {
    return ProviderOverride(
      origin: this,
      override: TestSessionControllerProvider._internal(
        () => create()
          ..testId = testId
          ..surveyId = surveyId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        testId: testId,
        surveyId: surveyId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TestSessionController,
      TestSessionState> createElement() {
    return _TestSessionControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TestSessionControllerProvider &&
        other.testId == testId &&
        other.surveyId == surveyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, testId.hashCode);
    hash = _SystemHash.combine(hash, surveyId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TestSessionControllerRef
    on AutoDisposeAsyncNotifierProviderRef<TestSessionState> {
  /// The parameter `testId` of this provider.
  String get testId;

  /// The parameter `surveyId` of this provider.
  String get surveyId;
}

class _TestSessionControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TestSessionController,
        TestSessionState> with TestSessionControllerRef {
  _TestSessionControllerProviderElement(super.provider);

  @override
  String get testId => (origin as TestSessionControllerProvider).testId;
  @override
  String get surveyId => (origin as TestSessionControllerProvider).surveyId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
