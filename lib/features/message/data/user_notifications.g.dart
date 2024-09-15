// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notifications.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userNotificationsNotifierHash() =>
    r'7a059772762ecf70c50a6903cf7387d818c4eec6';

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

abstract class _$UserNotificationsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<SystemMessage>> {
  late final String category;

  FutureOr<List<SystemMessage>> build(
    String category,
  );
}

/// See also [UserNotificationsNotifier].
@ProviderFor(UserNotificationsNotifier)
const userNotificationsNotifierProvider = UserNotificationsNotifierFamily();

/// See also [UserNotificationsNotifier].
class UserNotificationsNotifierFamily
    extends Family<AsyncValue<List<SystemMessage>>> {
  /// See also [UserNotificationsNotifier].
  const UserNotificationsNotifierFamily();

  /// See also [UserNotificationsNotifier].
  UserNotificationsNotifierProvider call(
    String category,
  ) {
    return UserNotificationsNotifierProvider(
      category,
    );
  }

  @override
  UserNotificationsNotifierProvider getProviderOverride(
    covariant UserNotificationsNotifierProvider provider,
  ) {
    return call(
      provider.category,
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
  String? get name => r'userNotificationsNotifierProvider';
}

/// See also [UserNotificationsNotifier].
class UserNotificationsNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UserNotificationsNotifier,
        List<SystemMessage>> {
  /// See also [UserNotificationsNotifier].
  UserNotificationsNotifierProvider(
    String category,
  ) : this._internal(
          () => UserNotificationsNotifier()..category = category,
          from: userNotificationsNotifierProvider,
          name: r'userNotificationsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userNotificationsNotifierHash,
          dependencies: UserNotificationsNotifierFamily._dependencies,
          allTransitiveDependencies:
              UserNotificationsNotifierFamily._allTransitiveDependencies,
          category: category,
        );

  UserNotificationsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.category,
  }) : super.internal();

  final String category;

  @override
  FutureOr<List<SystemMessage>> runNotifierBuild(
    covariant UserNotificationsNotifier notifier,
  ) {
    return notifier.build(
      category,
    );
  }

  @override
  Override overrideWith(UserNotificationsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserNotificationsNotifierProvider._internal(
        () => create()..category = category,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        category: category,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<UserNotificationsNotifier,
      List<SystemMessage>> createElement() {
    return _UserNotificationsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserNotificationsNotifierProvider &&
        other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserNotificationsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<SystemMessage>> {
  /// The parameter `category` of this provider.
  String get category;
}

class _UserNotificationsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserNotificationsNotifier,
        List<SystemMessage>> with UserNotificationsNotifierRef {
  _UserNotificationsNotifierProviderElement(super.provider);

  @override
  String get category => (origin as UserNotificationsNotifierProvider).category;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
