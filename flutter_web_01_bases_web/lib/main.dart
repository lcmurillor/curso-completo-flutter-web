import 'package:bases_web/layout/main_layout_page.dart';
import 'package:bases_web/locator.dart';
import 'package:bases_web/router/router.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocation();
  Flurrorouter.configureRoute();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //Titulo en la parte superiro del tab
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: '/',
        // routes: {
        //   '/stateful': (_) => const CounterPege(),
        //   '/provider': (_) => const CounterProviderPege(),
        //   '/stateful': (_) => const CounterPege()
        // },
        //onGenerateRoute: RouteGenerator.generateRoute,
        onGenerateRoute: Flurrorouter.router.generator,
        navigatorKey: locator<NavigationService>().navigatorKey,
        builder: (_, child) {
          return MainLayoutPage(
            child: child!,
          );
        });
  }
}
