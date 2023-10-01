import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'stream_provider.g.dart';

@riverpod
Stream<List<String>> usersInChat(UsersInChatRef ref) async* {
  final names = <String>[];
  //yield names;
  //RandomGenerator.randomNameStream().listen((e) {});
  await for (final name in RandomGenerator.randomNameStream()) {
    names.add(name);
    yield names;
  }
}
