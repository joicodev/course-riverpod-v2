import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/future_providers/future_providers.dart';

class FamilyFutureScreen extends ConsumerStatefulWidget {
  const FamilyFutureScreen({super.key});

  @override
  ConsumerState<FamilyFutureScreen> createState() => _FamilyFutureScreenState();
}

class _FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {
  int pokemonId = 1;

  @override
  Widget build(BuildContext context) {
    final pokemonName = ref.watch(pokemonFromIdProvider(pokemonId));
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon Id: $pokemonId'),
      ),
      body: Center(
        child: pokemonName.when(
          data: (data) => Text(data),
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) => Text(error.toString()),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (pokemonId > 1) ...[
            FloatingActionButton(
              heroTag: "bt-01",
              child: const Icon(Icons.arrow_left),
              onPressed: () {
                pokemonId--;
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
          ],
          FloatingActionButton(
            child: const Icon(Icons.arrow_right),
            onPressed: () {
              pokemonId++;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
