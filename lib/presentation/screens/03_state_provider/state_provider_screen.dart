import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/providers.dart';

class StateProviderScreen extends StatelessWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Provider')),
      body: Center(
          child: Column(
        children: [
          const Spacer(flex: 1),
          Consumer(
            builder: (context, ref, child) {
              final iconData = ref.watch(darkModeProvider)
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined;
              return IconButton(
                icon: Icon(iconData, size: 100),
                onPressed: () {
                  ref.read(darkModeProvider.notifier).toggleDarkMode();
                },
              );
            },
          ),
          const Text('Fernando Herrera', style: TextStyle(fontSize: 25)),
          _counterWidget(),
          const Spacer(flex: 2),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Nombre aleatorio'),
        icon: const Icon(Icons.refresh_rounded),
        onPressed: () {},
      ),
    );
  }

  Widget _counterWidget() {
    return Consumer(builder: (_, ref, __) {
      return TextButton.icon(
        icon: const Icon(
          Icons.add,
          size: 50,
        ),
        label: Text(
          "${ref.watch(counterProvider)}",
          style: const TextStyle(fontSize: 100),
        ),
        onPressed: () => ref.read(counterProvider.notifier).increase(),
      );
    });
  }
}
