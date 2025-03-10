import 'package:bases_web/providers/counter_provider.dart';
import 'package:bases_web/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({Key? key, required this.q}) : super(key: key);
  final String q;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(q),
        child: const _CounterProviderViewBody());
  }
}

class _CounterProviderViewBody extends StatelessWidget {
  const _CounterProviderViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // const CustomAppMenu(),

        //seprar el espacio maximo entre cada widget
        const Spacer(),
        const Text(
          'Contador Provider',
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Contador : ${counterProvider.conter}',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
                text: 'Incrementar',
                onPressed: () => counterProvider.increment()),
            CustomFlatButton(
                text: 'Decrementar',
                onPressed: () => counterProvider.decrement()),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
