// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$monthDetailNotifierHash() =>
    r'dcd118de449d0166b5c7a9a65ff78794b4d35f81';

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

abstract class _$MonthDetailNotifier
    extends BuildlessAutoDisposeAsyncNotifier<MonthDetail> {
  late final int month;
  late final int type;

  FutureOr<MonthDetail> build(
    int month,
    int type,
  );
}

/// See also [MonthDetailNotifier].
@ProviderFor(MonthDetailNotifier)
const monthDetailNotifierProvider = MonthDetailNotifierFamily();

/// See also [MonthDetailNotifier].
class MonthDetailNotifierFamily extends Family<AsyncValue<MonthDetail>> {
  /// See also [MonthDetailNotifier].
  const MonthDetailNotifierFamily();

  /// See also [MonthDetailNotifier].
  MonthDetailNotifierProvider call(
    int month,
    int type,
  ) {
    return MonthDetailNotifierProvider(
      month,
      type,
    );
  }

  @override
  MonthDetailNotifierProvider getProviderOverride(
    covariant MonthDetailNotifierProvider provider,
  ) {
    return call(
      provider.month,
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
  String? get name => r'monthDetailNotifierProvider';
}

/// See also [MonthDetailNotifier].
class MonthDetailNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    MonthDetailNotifier, MonthDetail> {
  /// See also [MonthDetailNotifier].
  MonthDetailNotifierProvider(
    int month,
    int type,
  ) : this._internal(
          () => MonthDetailNotifier()
            ..month = month
            ..type = type,
          from: monthDetailNotifierProvider,
          name: r'monthDetailNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$monthDetailNotifierHash,
          dependencies: MonthDetailNotifierFamily._dependencies,
          allTransitiveDependencies:
              MonthDetailNotifierFamily._allTransitiveDependencies,
          month: month,
          type: type,
        );

  MonthDetailNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.month,
    required this.type,
  }) : super.internal();

  final int month;
  final int type;

  @override
  FutureOr<MonthDetail> runNotifierBuild(
    covariant MonthDetailNotifier notifier,
  ) {
    return notifier.build(
      month,
      type,
    );
  }

  @override
  Override overrideWith(MonthDetailNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: MonthDetailNotifierProvider._internal(
        () => create()
          ..month = month
          ..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        month: month,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<MonthDetailNotifier, MonthDetail>
      createElement() {
    return _MonthDetailNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MonthDetailNotifierProvider &&
        other.month == month &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, month.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MonthDetailNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<MonthDetail> {
  /// The parameter `month` of this provider.
  int get month;

  /// The parameter `type` of this provider.
  int get type;
}

class _MonthDetailNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MonthDetailNotifier,
        MonthDetail> with MonthDetailNotifierRef {
  _MonthDetailNotifierProviderElement(super.provider);

  @override
  int get month => (origin as MonthDetailNotifierProvider).month;
  @override
  int get type => (origin as MonthDetailNotifierProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
