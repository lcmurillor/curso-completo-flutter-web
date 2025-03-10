import 'package:bases_web/shared/custom_app_menu.dart';
import 'package:bases_web/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterPege extends StatefulWidget {
  const CounterPege({Key? key}) : super(key: key);

  @override
  State<CounterPege> createState() => _CounterPegeState();
}

class _CounterPegeState extends State<CounterPege> {
  int cont = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),

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
                style:
                    const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
