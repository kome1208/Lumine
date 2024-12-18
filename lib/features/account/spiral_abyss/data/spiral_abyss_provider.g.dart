// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spiral_abyss_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$spiralAbyssNotifierHash() =>
    r'516169a9841f537ca621d2e636a820dfe0c6f6b8';

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

abstract class _$SpiralAbyssNotifier
    extends BuildlessAutoDisposeAsyncNotifier<SpiralAbyss> {
  late final int scheduleType;

  FutureOr<SpiralAbyss> build(
    int scheduleType,
  );
}

/// See also [SpiralAbyssNotifier].
@ProviderFor(SpiralAbyssNotifier)
const spiralAbyssNotifierProvider = SpiralAbyssNotifierFamily();

/// See also [SpiralAbyssNotifier].
class SpiralAbyssNotifierFamily extends Family<AsyncValue<SpiralAbyss>> {
  /// See also [SpiralAbyssNotifier].
  const SpiralAbyssNotifierFamily();

  /// See also [SpiralAbyssNotifier].
  SpiralAbyssNotifierProvider call(
    int scheduleType,
  ) {
    return SpiralAbyssNotifierProvider(
      scheduleType,
    );
  }

  @override
  SpiralAbyssNotifierProvider getProviderOverride(
    covariant SpiralAbyssNotifierProvider provider,
  ) {
    return call(
      provider.scheduleType,
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
  String? get name => r'spiralAbyssNotifierProvider';
}

/// See also [SpiralAbyssNotifier].
class SpiralAbyssNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    SpiralAbyssNotifier, SpiralAbyss> {
  /// See also [SpiralAbyssNotifier].
  SpiralAbyssNotifierProvider(
    int scheduleType,
  ) : this._internal(
          () => SpiralAbyssNotifier()..scheduleType = scheduleType,
          from: spiralAbyssNotifierProvider,
          name: r'spiralAbyssNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$spiralAbyssNotifierHash,
          dependencies: SpiralAbyssNotifierFamily._dependencies,
          allTransitiveDependencies:
              SpiralAbyssNotifierFamily._allTransitiveDependencies,
          scheduleType: scheduleType,
        );

  SpiralAbyssNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.scheduleType,
  }) : super.internal();

  final int scheduleType;

  @override
  FutureOr<SpiralAbyss> runNotifierBuild(
    covariant SpiralAbyssNotifier notifier,
  ) {
    return notifier.build(
      scheduleType,
    );
  }

  @override
  Override overrideWith(SpiralAbyssNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: SpiralAbyssNotifierProvider._internal(
        () => create()..scheduleType = scheduleType,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        scheduleType: scheduleType,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SpiralAbyssNotifier, SpiralAbyss>
      createElement() {
    return _SpiralAbyssNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SpiralAbyssNotifierProvider &&
        other.scheduleType == scheduleType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, scheduleType.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SpiralAbyssNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<SpiralAbyss> {
  /// The parameter `scheduleType` of this provider.
  int get scheduleType;
}

class _SpiralAbyssNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SpiralAbyssNotifier,
        SpiralAbyss> with SpiralAbyssNotifierRef {
  _SpiralAbyssNotifierProviderElement(super.provider);

  @override
  int get scheduleType => (origin as SpiralAbyssNotifierProvider).scheduleType;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
