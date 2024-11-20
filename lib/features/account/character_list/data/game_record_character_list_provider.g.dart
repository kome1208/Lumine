// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_record_character_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gameRecordCharacterListNotifierHash() =>
    r'7a2bcaf9e6995b50984a17d00b48c15b59797d5a';

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

abstract class _$GameRecordCharacterListNotifier
    extends BuildlessAutoDisposeAsyncNotifier<GameRecordCharacterList> {
  late final int sortType;
  late final List<String>? elements;
  late final List<int>? weaponTypes;

  FutureOr<GameRecordCharacterList> build(
    int sortType,
    List<String>? elements,
    List<int>? weaponTypes,
  );
}

/// See also [GameRecordCharacterListNotifier].
@ProviderFor(GameRecordCharacterListNotifier)
const gameRecordCharacterListNotifierProvider =
    GameRecordCharacterListNotifierFamily();

/// See also [GameRecordCharacterListNotifier].
class GameRecordCharacterListNotifierFamily
    extends Family<AsyncValue<GameRecordCharacterList>> {
  /// See also [GameRecordCharacterListNotifier].
  const GameRecordCharacterListNotifierFamily();

  /// See also [GameRecordCharacterListNotifier].
  GameRecordCharacterListNotifierProvider call(
    int sortType,
    List<String>? elements,
    List<int>? weaponTypes,
  ) {
    return GameRecordCharacterListNotifierProvider(
      sortType,
      elements,
      weaponTypes,
    );
  }

  @override
  GameRecordCharacterListNotifierProvider getProviderOverride(
    covariant GameRecordCharacterListNotifierProvider provider,
  ) {
    return call(
      provider.sortType,
      provider.elements,
      provider.weaponTypes,
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
  String? get name => r'gameRecordCharacterListNotifierProvider';
}

/// See also [GameRecordCharacterListNotifier].
class GameRecordCharacterListNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        GameRecordCharacterListNotifier, GameRecordCharacterList> {
  /// See also [GameRecordCharacterListNotifier].
  GameRecordCharacterListNotifierProvider(
    int sortType,
    List<String>? elements,
    List<int>? weaponTypes,
  ) : this._internal(
          () => GameRecordCharacterListNotifier()
            ..sortType = sortType
            ..elements = elements
            ..weaponTypes = weaponTypes,
          from: gameRecordCharacterListNotifierProvider,
          name: r'gameRecordCharacterListNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$gameRecordCharacterListNotifierHash,
          dependencies: GameRecordCharacterListNotifierFamily._dependencies,
          allTransitiveDependencies:
              GameRecordCharacterListNotifierFamily._allTransitiveDependencies,
          sortType: sortType,
          elements: elements,
          weaponTypes: weaponTypes,
        );

  GameRecordCharacterListNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sortType,
    required this.elements,
    required this.weaponTypes,
  }) : super.internal();

  final int sortType;
  final List<String>? elements;
  final List<int>? weaponTypes;

  @override
  FutureOr<GameRecordCharacterList> runNotifierBuild(
    covariant GameRecordCharacterListNotifier notifier,
  ) {
    return notifier.build(
      sortType,
      elements,
      weaponTypes,
    );
  }

  @override
  Override overrideWith(GameRecordCharacterListNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: GameRecordCharacterListNotifierProvider._internal(
        () => create()
          ..sortType = sortType
          ..elements = elements
          ..weaponTypes = weaponTypes,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sortType: sortType,
        elements: elements,
        weaponTypes: weaponTypes,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GameRecordCharacterListNotifier,
      GameRecordCharacterList> createElement() {
    return _GameRecordCharacterListNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GameRecordCharacterListNotifierProvider &&
        other.sortType == sortType &&
        other.elements == elements &&
        other.weaponTypes == weaponTypes;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sortType.hashCode);
    hash = _SystemHash.combine(hash, elements.hashCode);
    hash = _SystemHash.combine(hash, weaponTypes.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GameRecordCharacterListNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<GameRecordCharacterList> {
  /// The parameter `sortType` of this provider.
  int get sortType;

  /// The parameter `elements` of this provider.
  List<String>? get elements;

  /// The parameter `weaponTypes` of this provider.
  List<int>? get weaponTypes;
}

class _GameRecordCharacterListNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        GameRecordCharacterListNotifier,
        GameRecordCharacterList> with GameRecordCharacterListNotifierRef {
  _GameRecordCharacterListNotifierProviderElement(super.provider);

  @override
  int get sortType =>
      (origin as GameRecordCharacterListNotifierProvider).sortType;
  @override
  List<String>? get elements =>
      (origin as GameRecordCharacterListNotifierProvider).elements;
  @override
  List<int>? get weaponTypes =>
      (origin as GameRecordCharacterListNotifierProvider).weaponTypes;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
