import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/providers.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider + Providers'),
      ),
      body: const _BodyTodoView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class _BodyTodoView extends ConsumerWidget {
  const _BodyTodoView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const ListTile(
          title: Text('Guest List'),
          subtitle: Text('These are the people to invite to the party'),
        ),
        SegmentedButton(
          segments: const [
            ButtonSegment(value: TodoFilterType.all, icon: Text('All')),
            ButtonSegment(value: TodoFilterType.completed, icon: Text('Guest')),
            ButtonSegment(
                value: TodoFilterType.pending, icon: Text('Not guest')),
          ],
          selected: const <TodoFilterType>{TodoFilterType.all},
          onSelectionChanged: (filterType) {
            final provider = ref.read(todoCurrentFilterProvider.notifier);
            provider.setCurrentFilter(filterType.first);
          },
        ),
        const SizedBox(height: 5),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return SwitchListTile(
                  title: const Text('Juan carlos'),
                  value: true,
                  onChanged: (value) {});
            },
          ),
        )
      ],
    );
  }
}
