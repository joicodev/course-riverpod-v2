import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/config/helpers/random_generator.dart';
import 'package:riverpod_app/presentation/providers/providers.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider + Providers'),
      ),
      body: const _BodyTodoView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ref.read(todosProvider.notifier).create(
                RandomGenerator.getRandomName(),
              );
        },
      ),
    );
  }
}

class _BodyTodoView extends ConsumerWidget {
  const _BodyTodoView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(filterTodosProvider);
    final currentFilter = ref.watch(todoCurrentFilterProvider);
    return Column(
      children: [
        const ListTile(
          title: Text('Guest List'),
          subtitle: Text('These are the people to invite to the party'),
        ),
        SegmentedButton(
          segments: const [
            ButtonSegment(
              value: TodoFilterType.all,
              icon: Text('All'),
            ),
            ButtonSegment(
              value: TodoFilterType.completed,
              icon: Text('Guest'),
            ),
            ButtonSegment(
                value: TodoFilterType.pending, icon: Text('Not guest')),
          ],
          selected: <TodoFilterType>{currentFilter},
          onSelectionChanged: (filterType) {
            final provider = ref.read(todoCurrentFilterProvider.notifier);
            provider.setCurrentFilter(filterType.first);
          },
        ),
        const SizedBox(height: 5),
        Expanded(
          child: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return SwitchListTile(
                title: Text(todo.description),
                value: todo.done,
                onChanged: (value) {
                  ref.read(todosProvider.notifier).toggle(todo.id);
                },
              );
            },
          ),
        )
      ],
    );
  }
}
