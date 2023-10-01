import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'future_providers.g.dart';

@Riverpod(keepAlive: true)
Future<String> pokemonName(PokemonNameRef ref) async {
  ref.onDispose(() => print('pokemonName disposed'));
  final pokemonId = ref.watch(pokemonIdProvider);
  return await PokemonInformation.getPokemonName(pokemonId);
}

@Riverpod(keepAlive: true)
class PokemonId extends _$PokemonId {
  @override
  int build() => 1;

  void next() => state++;

  void prev() => state--;
}

@Riverpod(keepAlive: true)
Future<String> pokemonFromId(PokemonFromIdRef ref, int pokemonId) async {
  return await PokemonInformation.getPokemonName(pokemonId);
}
