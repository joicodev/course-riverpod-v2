import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'state_providers.g.dart';

@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() => 5;

  void increase() => state++;

  void decrease() => state--;
}

@Riverpod(keepAlive: true)
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  void toggleDarkMode() => state = !state;
}

@Riverpod(keepAlive: true)
class RandomName extends _$RandomName {
  @override
  String build() => RandomGenerator.getRandomName();

  void generateRandomName() => state = RandomGenerator.getRandomName();
}
