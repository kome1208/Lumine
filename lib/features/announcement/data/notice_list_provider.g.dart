// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noticeListNotifierHash() =>
    r'bb0143e2b121c294bc2fc4b5e54f4103acf89ab3';

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

abstract class _$NoticeListNotifier
    extends BuildlessAutoDisposeAsyncNotifier<NewsList> {
  late final int type;

  FutureOr<NewsList> build(
    int type,
  );
}

/// See also [NoticeListNotifier].
@ProviderFor(NoticeListNotifier)
const noticeListNotifierProvider = NoticeListNotifierFamily();

/// See also [NoticeListNotifier].
class NoticeListNotifierFamily extends Family<AsyncValue<NewsList>> {
  /// See also [NoticeListNotifier].
  const NoticeListNotifierFamily();

  /// See also [NoticeListNotifier].
  NoticeListNotifierProvider call(
    int type,
  ) {
    return NoticeListNotifierProvider(
      type,
    );
  }

  @override
  NoticeListNotifierProvider getProviderOverride(
    covariant NoticeListNotifierProvider provider,
  ) {
    return call(
      provider.type,
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
  String? get name => r'noticeListNotifierProvider';
}

/// See also [NoticeListNotifier].
class NoticeListNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<NoticeListNotifier, NewsList> {
  /// See also [NoticeListNotifier].
  NoticeListNotifierProvider(
    int type,
  ) : this._internal(
          () => NoticeListNotifier()..type = type,
          from: noticeListNotifierProvider,
          name: r'noticeListNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$noticeListNotifierHash,
          dependencies: NoticeListNotifierFamily._dependencies,
          allTransitiveDependencies:
              NoticeListNotifierFamily._allTransitiveDependencies,
          type: type,
        );

  NoticeListNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final int type;

  @override
  FutureOr<NewsList> runNotifierBuild(
    covariant NoticeListNotifier notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(NoticeListNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: NoticeListNotifierProvider._internal(
        () => create()..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<NoticeListNotifier, NewsList>
      createElement() {
    return _NoticeListNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoticeListNotifierProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin NoticeListNotifierRef on AutoDisposeAsyncNotifierProviderRef<NewsList> {
  /// The parameter `type` of this provider.
  int get type;
}

class _NoticeListNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<NoticeListNotifier,
        NewsList> with NoticeListNotifierRef {
  _NoticeListNotifierProviderElement(super.provider);

  @override
  int get type => (origin as NoticeListNotifierProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
