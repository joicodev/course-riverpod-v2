// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonNameHash() => r'39e8aa7143b95f7bce9551f03c148e18eb58eb60';

/// See also [pokemonName].
@ProviderFor(pokemonName)
final pokemonNameProvider = FutureProvider<String>.internal(
  pokemonName,
  name: r'pokemonNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PokemonNameRef = FutureProviderRef<String>;
String _$pokemonFromIdHash() => r'bf0296b554e39a1ffab851db7deb8ea356b6bdcd';

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

/// See also [pokemonFromId].
@ProviderFor(pokemonFromId)
const pokemonFromIdProvider = PokemonFromIdFamily();

/// See also [pokemonFromId].
class PokemonFromIdFamily extends Family<AsyncValue<String>> {
  /// See also [pokemonFromId].
  const PokemonFromIdFamily();

  /// See also [pokemonFromId].
  PokemonFromIdProvider call(
    int pokemonId,
  ) {
    return PokemonFromIdProvider(
      pokemonId,
    );
  }

  @override
  PokemonFromIdProvider getProviderOverride(
    covariant PokemonFromIdProvider provider,
  ) {
    return call(
      provider.pokemonId,
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
  String? get name => r'pokemonFromIdProvider';
}

/// See also [pokemonFromId].
class PokemonFromIdProvider extends FutureProvider<String> {
  /// See also [pokemonFromId].
  PokemonFromIdProvider(
    int pokemonId,
  ) : this._internal(
          (ref) => pokemonFromId(
            ref as PokemonFromIdRef,
            pokemonId,
          ),
          from: pokemonFromIdProvider,
          name: r'pokemonFromIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonFromIdHash,
          dependencies: PokemonFromIdFamily._dependencies,
          allTransitiveDependencies:
              PokemonFromIdFamily._allTransitiveDependencies,
          pokemonId: pokemonId,
        );

  PokemonFromIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pokemonId,
  }) : super.internal();

  final int pokemonId;

  @override
  Override overrideWith(
    FutureOr<String> Function(PokemonFromIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PokemonFromIdProvider._internal(
        (ref) => create(ref as PokemonFromIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pokemonId: pokemonId,
      ),
    );
  }

  @override
  FutureProviderElement<String> createElement() {
    return _PokemonFromIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonFromIdProvider && other.pokemonId == pokemonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pokemonId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PokemonFromIdRef on FutureProviderRef<String> {
  /// The parameter `pokemonId` of this provider.
  int get pokemonId;
}

class _PokemonFromIdProviderElement extends FutureProviderElement<String>
    with PokemonFromIdRef {
  _PokemonFromIdProviderElement(super.provider);

  @override
  int get pokemonId => (origin as PokemonFromIdProvider).pokemonId;
}

String _$pokemonIdHash() => r'bb14a0b332cc0c14d4152070d79c4c5b0a3dd8c1';

/// See also [PokemonId].
@ProviderFor(PokemonId)
final pokemonIdProvider = NotifierProvider<PokemonId, int>.internal(
  PokemonId.new,
  name: r'pokemonIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PokemonId = Notifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
