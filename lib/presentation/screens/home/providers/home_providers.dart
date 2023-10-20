


import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_providers.g.dart';

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  changeTheme() {
    state = !state;
  }
}

@riverpod
GlobalKey<ScaffoldState> scafooldKey(ScafooldKeyRef ref) {
  return GlobalKey();
}

