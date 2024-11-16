// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_record_character_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gameRecordCharacterListHash() =>
    r'791cb6adc53b1fdcdf2dc6cc15ba2b47a28bb26e';

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

/// See also [gameRecordCharacterList].
@ProviderFor(gameRecordCharacterList)
const gameRecordCharacterListProvider = GameRecordCharacterListFamily();

/// See also [gameRecordCharacterList].
class GameRecordCharacterListFamily
    extends Family<AsyncValue<GameRecordCharacterList>> {
  /// See also [gameRecordCharacterList].
  const GameRecordCharacterListFamily();

  /// See also [gameRecordCharacterList].
  GameRecordCharacterListProvider call(
    int sortType,
    List<String>? elements,
    List<int>? weaponTypes,
  ) {
    return GameRecordCharacterListProvider(
      sortType,
      elements,
      weaponTypes,
    );
  }

  @override
  GameRecordCharacterListProvider getProviderOverride(
    covariant GameRecordCharacterListProvider provider,
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
  String? get name => r'gameRecordCharacterListProvider';
}

/// See also [gameRecordCharacterList].
class GameRecordCharacterListProvider
    extends AutoDisposeFutureProvider<GameRecordCharacterList> {
  /// See also [gameRecordCharacterList].
  GameRecordCharacterListProvider(
    int sortType,
    List<String>? elements,
    List<int>? weaponTypes,
  ) : this._internal(
          (ref) => gameRecordCharacterList(
            ref as GameRecordCharacterListRef,
            sortType,
            elements,
            weaponTypes,
          ),
          from: gameRecordCharacterListProvider,
          name: r'gameRecordCharacterListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$gameRecordCharacterListHash,
          dependencies: GameRecordCharacterListFamily._dependencies,
          allTransitiveDependencies:
              GameRecordCharacterListFamily._allTransitiveDependencies,
          sortType: sortType,
          elements: elements,
          weaponTypes: weaponTypes,
        );

  GameRecordCharacterListProvider._internal(
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
  Override overrideWith(
    FutureOr<GameRecordCharacterList> Function(
            GameRecordCharacterListRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GameRecordCharacterListProvider._internal(
        (ref) => create(ref as GameRecordCharacterListRef),
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
  AutoDisposeFutureProviderElement<GameRecordCharacterList> createElement() {
    return _GameRecordCharacterListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GameRecordCharacterListProvider &&
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
mixin GameRecordCharacterListRef
    on AutoDisposeFutureProviderRef<GameRecordCharacterList> {
  /// The parameter `sortType` of this provider.
  int get sortType;

  /// The parameter `elements` of this provider.
  List<String>? get elements;

  /// The parameter `weaponTypes` of this provider.
  List<int>? get weaponTypes;
}

class _GameRecordCharacterListProviderElement
    extends AutoDisposeFutureProviderElement<GameRecordCharacterList>
    with GameRecordCharacterListRef {
  _GameRecordCharacterListProviderElement(super.provider);

  @override
  int get sortType => (origin as GameRecordCharacterListProvider).sortType;
  @override
  List<String>? get elements =>
      (origin as GameRecordCharacterListProvider).elements;
  @override
  List<int>? get weaponTypes =>
      (origin as GameRecordCharacterListProvider).weaponTypes;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
