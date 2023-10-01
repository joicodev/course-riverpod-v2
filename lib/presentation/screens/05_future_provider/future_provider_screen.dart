import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/future_providers/future_providers.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonName = ref.watch(pokemonNameProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider'),
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
          if (ref.watch(pokemonIdProvider) > 1) ...[
            FloatingActionButton(
              heroTag: "bt-01",
              onPressed: () => ref.read(pokemonIdProvider.notifier).prev(),
              child: const Icon(Icons.arrow_left),
            ),
            const SizedBox(height: 10),
          ],
          FloatingActionButton(
            onPressed: () => ref.read(pokemonIdProvider.notifier).next(),
            child: const Icon(Icons.arrow_right),
          ),
        ],
      ),
    );
  }
}
