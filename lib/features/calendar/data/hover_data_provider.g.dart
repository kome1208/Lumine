// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hover_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$hoverDataNotifierHash() => r'ee3418a619d2958962e48959d3b6bec3b3288b37';

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

abstract class _$HoverDataNotifier
    extends BuildlessAutoDisposeAsyncNotifier<Hover> {
  late final String pageId;

  FutureOr<Hover> build(
    String pageId,
  );
}

/// See also [HoverDataNotifier].
@ProviderFor(HoverDataNotifier)
const hoverDataNotifierProvider = HoverDataNotifierFamily();

/// See also [HoverDataNotifier].
class HoverDataNotifierFamily extends Family<AsyncValue<Hover>> {
  /// See also [HoverDataNotifier].
  const HoverDataNotifierFamily();

  /// See also [HoverDataNotifier].
  HoverDataNotifierProvider call(
    String pageId,
  ) {
    return HoverDataNotifierProvider(
      pageId,
    );
  }

  @override
  HoverDataNotifierProvider getProviderOverride(
    covariant HoverDataNotifierProvider provider,
  ) {
    return call(
      provider.pageId,
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
  String? get name => r'hoverDataNotifierProvider';
}

/// See also [HoverDataNotifier].
class HoverDataNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<HoverDataNotifier, Hover> {
  /// See also [HoverDataNotifier].
  HoverDataNotifierProvider(
    String pageId,
  ) : this._internal(
          () => HoverDataNotifier()..pageId = pageId,
          from: hoverDataNotifierProvider,
          name: r'hoverDataNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$hoverDataNotifierHash,
          dependencies: HoverDataNotifierFamily._dependencies,
          allTransitiveDependencies:
              HoverDataNotifierFamily._allTransitiveDependencies,
          pageId: pageId,
        );

  HoverDataNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pageId,
  }) : super.internal();

  final String pageId;

  @override
  FutureOr<Hover> runNotifierBuild(
    covariant HoverDataNotifier notifier,
  ) {
    return notifier.build(
      pageId,
    );
  }

  @override
  Override overrideWith(HoverDataNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: HoverDataNotifierProvider._internal(
        () => create()..pageId = pageId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pageId: pageId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<HoverDataNotifier, Hover>
      createElement() {
    return _HoverDataNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HoverDataNotifierProvider && other.pageId == pageId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HoverDataNotifierRef on AutoDisposeAsyncNotifierProviderRef<Hover> {
  /// The parameter `pageId` of this provider.
  String get pageId;
}

class _HoverDataNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HoverDataNotifier, Hover>
    with HoverDataNotifierRef {
  _HoverDataNotifierProviderElement(super.provider);

  @override
  String get pageId => (origin as HoverDataNotifierProvider).pageId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
