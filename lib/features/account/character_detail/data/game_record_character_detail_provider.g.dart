// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_record_character_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gameRecordCharacterDetailNotifierHash() =>
    r'd057601e3de1443dbbe668beab3e7b203ed0dbd2';

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

abstract class _$GameRecordCharacterDetailNotifier
    extends BuildlessAutoDisposeAsyncNotifier<GameRecordCharacterDetail> {
  late final int characterId;

  FutureOr<GameRecordCharacterDetail> build(
    int characterId,
  );
}

/// See also [GameRecordCharacterDetailNotifier].
@ProviderFor(GameRecordCharacterDetailNotifier)
const gameRecordCharacterDetailNotifierProvider =
    GameRecordCharacterDetailNotifierFamily();

/// See also [GameRecordCharacterDetailNotifier].
class GameRecordCharacterDetailNotifierFamily
    extends Family<AsyncValue<GameRecordCharacterDetail>> {
  /// See also [GameRecordCharacterDetailNotifier].
  const GameRecordCharacterDetailNotifierFamily();

  /// See also [GameRecordCharacterDetailNotifier].
  GameRecordCharacterDetailNotifierProvider call(
    int characterId,
  ) {
    return GameRecordCharacterDetailNotifierProvider(
      characterId,
    );
  }

  @override
  GameRecordCharacterDetailNotifierProvider getProviderOverride(
    covariant GameRecordCharacterDetailNotifierProvider provider,
  ) {
    return call(
      provider.characterId,
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
  String? get name => r'gameRecordCharacterDetailNotifierProvider';
}

/// See also [GameRecordCharacterDetailNotifier].
class GameRecordCharacterDetailNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        GameRecordCharacterDetailNotifier, GameRecordCharacterDetail> {
  /// See also [GameRecordCharacterDetailNotifier].
  GameRecordCharacterDetailNotifierProvider(
    int characterId,
  ) : this._internal(
          () => GameRecordCharacterDetailNotifier()..characterId = characterId,
          from: gameRecordCharacterDetailNotifierProvider,
          name: r'gameRecordCharacterDetailNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$gameRecordCharacterDetailNotifierHash,
          dependencies: GameRecordCharacterDetailNotifierFamily._dependencies,
          allTransitiveDependencies: GameRecordCharacterDetailNotifierFamily
              ._allTransitiveDependencies,
          characterId: characterId,
        );

  GameRecordCharacterDetailNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.characterId,
  }) : super.internal();

  final int characterId;

  @override
  FutureOr<GameRecordCharacterDetail> runNotifierBuild(
    covariant GameRecordCharacterDetailNotifier notifier,
  ) {
    return notifier.build(
      characterId,
    );
  }

  @override
  Override overrideWith(GameRecordCharacterDetailNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: GameRecordCharacterDetailNotifierProvider._internal(
        () => create()..characterId = characterId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        characterId: characterId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GameRecordCharacterDetailNotifier,
      GameRecordCharacterDetail> createElement() {
    return _GameRecordCharacterDetailNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GameRecordCharacterDetailNotifierProvider &&
        other.characterId == characterId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, characterId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GameRecordCharacterDetailNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<GameRecordCharacterDetail> {
  /// The parameter `characterId` of this provider.
  int get characterId;
}

class _GameRecordCharacterDetailNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        GameRecordCharacterDetailNotifier,
        GameRecordCharacterDetail> with GameRecordCharacterDetailNotifierRef {
  _GameRecordCharacterDetailNotifierProviderElement(super.provider);

  @override
  int get characterId =>
      (origin as GameRecordCharacterDetailNotifierProvider).characterId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
