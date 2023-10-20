

import 'package:app_widgets/domian/entities/slideInfo.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_tutorial_provider.g.dart';





@riverpod
class SlidesInfos extends _$SlidesInfos {
  @override
  List<SlideInfo> build() {
    return [
      SlideInfo(title: 'Busca la comida', caption: 'Est eiusmod aliqua adipisicing elit nostrud deserunt aliqua tempor. Id commodo irure nis.', imageUrl: 'assets/images/1.png'),
      SlideInfo(title: 'Entrega Rapida', caption: 'fsadfdsafsafdsafdsa fadsfsda ', imageUrl: 'assets/images/2.png'),
      SlideInfo(title: 'Disfruta la Comida', caption: 'captionffsadfsdafd  faasdfsadfdsafasdfsdaf', imageUrl: 'assets/images/3.png')
    ];
  }
}

