import 'package:bases_web/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key, required this.base}) : super(key: key);
  final String base;

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int cont = 0;
  @override
  void initState() {
    super.initState();
    if (int.tryParse(widget.base) != null) cont = int.parse(widget.base);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //const CustomAppMenu(),

        //seprar el espacio maximo entre cada widget
        const Spacer(),
        const Text(
          'Contador Stateful',
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Contador : $cont',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
                text: 'Incrementar', onPressed: () => setState(() => cont++)),
            CustomFlatButton(
                text: 'Decrementar', onPressed: () => setState(() => cont--)),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
