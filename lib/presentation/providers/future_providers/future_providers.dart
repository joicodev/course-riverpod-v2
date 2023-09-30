import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'future_providers.g.dart';

@riverpod
Future<String> pokemonName(PokemonNameRef ref) async {
  return Future.delayed(
    const Duration(seconds: 2),
    () => 'Pikachu',
  );
}
