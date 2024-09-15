// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month_info_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$monthInfoNotifierHash() => r'12a4ea8c1c9d3e02d1ccd0b61fb9c039870a9095';

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

abstract class _$MonthInfoNotifier
    extends BuildlessAutoDisposeAsyncNotifier<MonthInfo> {
  late final int month;

  FutureOr<MonthInfo> build(
    int month,
  );
}

/// See also [MonthInfoNotifier].
@ProviderFor(MonthInfoNotifier)
const monthInfoNotifierProvider = MonthInfoNotifierFamily();

/// See also [MonthInfoNotifier].
class MonthInfoNotifierFamily extends Family<AsyncValue<MonthInfo>> {
  /// See also [MonthInfoNotifier].
  const MonthInfoNotifierFamily();

  /// See also [MonthInfoNotifier].
  MonthInfoNotifierProvider call(
    int month,
  ) {
    return MonthInfoNotifierProvider(
      month,
    );
  }

  @override
  MonthInfoNotifierProvider getProviderOverride(
    covariant MonthInfoNotifierProvider provider,
  ) {
    return call(
      provider.month,
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
  String? get name => r'monthInfoNotifierProvider';
}

/// See also [MonthInfoNotifier].
class MonthInfoNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<MonthInfoNotifier, MonthInfo> {
  /// See also [MonthInfoNotifier].
  MonthInfoNotifierProvider(
    int month,
  ) : this._internal(
          () => MonthInfoNotifier()..month = month,
          from: monthInfoNotifierProvider,
          name: r'monthInfoNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$monthInfoNotifierHash,
          dependencies: MonthInfoNotifierFamily._dependencies,
          allTransitiveDependencies:
              MonthInfoNotifierFamily._allTransitiveDependencies,
          month: month,
        );

  MonthInfoNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.month,
  }) : super.internal();

  final int month;

  @override
  FutureOr<MonthInfo> runNotifierBuild(
    covariant MonthInfoNotifier notifier,
  ) {
    return notifier.build(
      month,
    );
  }

  @override
  Override overrideWith(MonthInfoNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: MonthInfoNotifierProvider._internal(
        () => create()..month = month,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        month: month,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<MonthInfoNotifier, MonthInfo>
      createElement() {
    return _MonthInfoNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MonthInfoNotifierProvider && other.month == month;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, month.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MonthInfoNotifierRef on AutoDisposeAsyncNotifierProviderRef<MonthInfo> {
  /// The parameter `month` of this provider.
  int get month;
}

class _MonthInfoNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MonthInfoNotifier,
        MonthInfo> with MonthInfoNotifierRef {
  _MonthInfoNotifierProviderElement(super.provider);

  @override
  int get month => (origin as MonthInfoNotifierProvider).month;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
