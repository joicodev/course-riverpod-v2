import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'state_providers.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  int build() => 5;

  void increase() => state++;

  void decrease() => state--;
}

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  void toggleDarkMode() => state = !state;
}

@riverpod
class RandomName extends _$RandomName {
  @override
  String build() => RandomGenerator.getRandomName();

  void generateRandomName() => state = RandomGenerator.getRandomName();
}
