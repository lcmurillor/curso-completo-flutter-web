import 'package:bases_web/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const CustomAppMenu(),
            const Spacer(),
            Expanded(child: child),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
