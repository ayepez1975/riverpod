import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'controls_providers.g.dart';

enum Transportation {car, plane, boat, submarine}



@riverpod
class DevMode extends _$DevMode {
  @override
  bool build() => false;

  changeDevMode() {
    state = !state;
  }
}


@Riverpod(keepAlive: true)
class SelectedTransportation extends _$SelectedTransportation {
  @override
  Transportation build() => Transportation.car;

  void changeCurrentFilter(Transportation filter) {
     state = filter;
     
   }
}


@Riverpod(keepAlive: true)
class Desayuno extends _$Desayuno {
  @override
   bool build() => false;
   changeDesayuno(){
    state = !state;
   }
}

@Riverpod(keepAlive: true)
class Comida extends _$Comida {
  @override
   bool build() => false;
   changeComida(){
    state = !state;
   }
}

@Riverpod(keepAlive: true)
class Cena extends _$Cena {
  @override
   bool build() => false;
    changecena(){
    state = !state;
   }
}
 
