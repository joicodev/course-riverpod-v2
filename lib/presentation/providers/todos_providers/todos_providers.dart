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
    return List.generate(
      10,
      (index) => Todo(
        id: uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: DateTime.now(),
      ),
    );
  }
}
