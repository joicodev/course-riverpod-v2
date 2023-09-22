// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterHash() => r'4e7f4001fd58daf4ef4a1a1c1b05b0e912d42026';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = NotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = Notifier<int>;
String _$darkModeHash() => r'75b987000a164c914f66f5c2233ae2b97fb73ea2';

/// See also [DarkMode].
@ProviderFor(DarkMode)
final darkModeProvider = NotifierProvider<DarkMode, bool>.internal(
  DarkMode.new,
  name: r'darkModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$darkModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DarkMode = Notifier<bool>;
String _$randomNameHash() => r'd592f4236439f2115cc5b9af40902d065dcf9dc3';

/// See also [RandomName].
@ProviderFor(RandomName)
final randomNameProvider = NotifierProvider<RandomName, String>.internal(
  RandomName.new,
  name: r'randomNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$randomNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RandomName = Notifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
