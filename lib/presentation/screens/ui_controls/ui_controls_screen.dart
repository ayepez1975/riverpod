import 'package:app_widgets/presentation/screens/ui_controls/providers/controls_providers.dart';
import 'package:app_widgets/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});
  static const name = 'UiControlsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [AppBarCustom()],
          title: const Text('UiControls'),
        ),
        body: const _ControlsView());
  }
}

class _ControlsView extends ConsumerWidget {
  const _ControlsView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final valueDev = ref.watch(devModeProvider);
    final selectTransportation = ref.watch(selectedTransportationProvider);
    final desayuno = ref.watch(desayunoProvider);
    final comida = ref.watch(comidaProvider);
    final cena = ref.watch(cenaProvider);

    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile.adaptive(
            value: valueDev,
            title: const Text('Developer Mode'),
            subtitle: const Text('Control Adicional'),
            onChanged: (value) {
              ref.read(devModeProvider.notifier).changeDevMode();
            }),
        ExpansionTile(
          title: const Text('Vehiculos de Tranbsporte'),
          subtitle: const Text(' seleccione'),
          children: [
            RadioListTile.adaptive(
              title: const Text('By car'),
              subtitle: const Text('Transporte by Car'),
              value: Transportation.car,
              groupValue: selectTransportation,
              onChanged: (value) {
                ref
                    .read(selectedTransportationProvider.notifier)
                    .changeCurrentFilter(value!);
              },
            ),
            RadioListTile.adaptive(
              title: const Text('By boat'),
              subtitle: const Text('Transporte by boat'),
              value: Transportation.boat,
              groupValue: selectTransportation,
              onChanged: (value) {
                ref
                    .read(selectedTransportationProvider.notifier)
                    .changeCurrentFilter(value!);
              },
            ),
            RadioListTile.adaptive(
              title: const Text('By plane'),
              subtitle: const Text('Transporte by plane'),
              value: Transportation.plane,
              groupValue: selectTransportation,
              onChanged: (value) {
                ref
                    .read(selectedTransportationProvider.notifier)
                    .changeCurrentFilter(value!);
              },
            ),
            RadioListTile.adaptive(
              title: const Text('By submarine'),
              subtitle: const Text('Transporte by submarine'),
              value: Transportation.submarine,
              groupValue: selectTransportation,
              onChanged: (value) {
                ref
                    .read(selectedTransportationProvider.notifier)
                    .changeCurrentFilter(value!);
              },
            )
          ],
        ),
        ExpansionTile(
          title: const Text('Alimentos '),
          children: [
            CheckboxListTile.adaptive(
              title: const Text('Desayuno'),
              value: desayuno,
              onChanged: (value) {
                ref.read(desayunoProvider.notifier).changeDesayuno();
              },
            ),
            CheckboxListTile.adaptive(
              title: const Text('comida'),
              value: comida,
              onChanged: (value) {
                ref.read(comidaProvider.notifier).changeComida();
              },
            ),
            CheckboxListTile.adaptive(
              title: const Text('cena'),
              value: cena,
              onChanged: (value) {
                ref.read(cenaProvider.notifier).changecena();
              },
            )
          ],
        )
      ],
    );
  }
}
