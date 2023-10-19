// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controls_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$devModeHash() => r'c288777ccb1995b46cfcf043abffbbc8e65cab87';

/// See also [DevMode].
@ProviderFor(DevMode)
final devModeProvider = AutoDisposeNotifierProvider<DevMode, bool>.internal(
  DevMode.new,
  name: r'devModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$devModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DevMode = AutoDisposeNotifier<bool>;
String _$selectedTransportationHash() =>
    r'bac4c4ecee3c154afc3b48e3b8f9e22d987d017a';

/// See also [SelectedTransportation].
@ProviderFor(SelectedTransportation)
final selectedTransportationProvider =
    NotifierProvider<SelectedTransportation, Transportation>.internal(
  SelectedTransportation.new,
  name: r'selectedTransportationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedTransportationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedTransportation = Notifier<Transportation>;
String _$desayunoHash() => r'e9417ae87e96354738fc24304a3532e2911dca91';

/// See also [Desayuno].
@ProviderFor(Desayuno)
final desayunoProvider = NotifierProvider<Desayuno, bool>.internal(
  Desayuno.new,
  name: r'desayunoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$desayunoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Desayuno = Notifier<bool>;
String _$comidaHash() => r'146092cb0f7086b6088787a30636dafa8b704f83';

/// See also [Comida].
@ProviderFor(Comida)
final comidaProvider = NotifierProvider<Comida, bool>.internal(
  Comida.new,
  name: r'comidaProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$comidaHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Comida = Notifier<bool>;
String _$cenaHash() => r'878d8180ef2c6a5405a749fdf9bfa67fc2e839b5';

/// See also [Cena].
@ProviderFor(Cena)
final cenaProvider = NotifierProvider<Cena, bool>.internal(
  Cena.new,
  name: r'cenaProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cenaHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Cena = Notifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter
