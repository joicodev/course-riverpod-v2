import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';
import 'package:riverpod_app/domain/domain.dart';
import 'package:uuid/uuid.dart';

part 'todos_providers.g.dart';

const uuid = Uuid();

enum TodoFilterType { all, completed, pending }

@riverpod
class TodoCurrentFilter extends _$TodoCurrentFilter {
  @override
  TodoFilterType build() => TodoFilterType.all;

  void setCurrentFilter(TodoFilterType filter) => state = filter;
}

@riverpod
class Todos extends _$Todos {
  @override
  List<Todo> build() {
    final Random random = Random();
    return List.generate(5, (index) {
      final bool shouldComplete = random.nextBool();
      return Todo(
        id: uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: shouldComplete ? DateTime.now() : null,
      );
    });
  }

  void toggle(String id) {
    state = state.map((todo) {
      if (id == todo.id) {
        return todo.copyWith(
          completedAt: todo.done ? null : DateTime.now(),
        );
      }

      return todo;
    }).toList();
  }

  void create(String description) {
    state = [
      ...state,
      Todo(id: uuid.v4(), description: description, completedAt: null),
    ];
  }
}

@riverpod
List<Todo> filterTodos(FilterTodosRef ref) {
  final currentFilter = ref.watch(todoCurrentFilterProvider);
  final todos = ref.watch(todosProvider);
  switch (currentFilter) {
    case TodoFilterType.completed:
      return todos.where((todo) => todo.done).toList();
    case TodoFilterType.pending:
      return todos.where((todo) => !todo.done).toList();
    default:
      return todos;
  }
}
