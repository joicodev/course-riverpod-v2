// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filterTodosHash() => r'723df9b72e667a6cc03a4662f714eeb7878e2159';

/// See also [filterTodos].
@ProviderFor(filterTodos)
final filterTodosProvider = AutoDisposeProvider<List<Todo>>.internal(
  filterTodos,
  name: r'filterTodosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$filterTodosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilterTodosRef = AutoDisposeProviderRef<List<Todo>>;
String _$todoCurrentFilterHash() => r'75a1764bae1879fd4e7fcd2b941a2f3477c53af8';

/// See also [TodoCurrentFilter].
@ProviderFor(TodoCurrentFilter)
final todoCurrentFilterProvider =
    AutoDisposeNotifierProvider<TodoCurrentFilter, TodoFilterType>.internal(
  TodoCurrentFilter.new,
  name: r'todoCurrentFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todoCurrentFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoCurrentFilter = AutoDisposeNotifier<TodoFilterType>;
String _$todosHash() => r'926d5f63e360771c822738c1d62dfbb32565a83f';

/// See also [Todos].
@ProviderFor(Todos)
final todosProvider = AutoDisposeNotifierProvider<Todos, List<Todo>>.internal(
  Todos.new,
  name: r'todosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Todos = AutoDisposeNotifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
