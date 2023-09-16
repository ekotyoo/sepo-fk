// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_session_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$testSessionControllerHash() =>
    r'e10c8490ca6278ac57599e85e89d1a0a2f126ce3';

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
    this.testId,
    this.surveyId,
  ) : super.internal(
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
        );

  final String testId;
  final String surveyId;

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

  @override
  Future<TestSessionState> runNotifierBuild(
    covariant TestSessionController notifier,
  ) {
    return notifier.build(
      testId,
      surveyId,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
