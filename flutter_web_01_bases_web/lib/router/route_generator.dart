import 'package:bases_web/views/views.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(const CounterView(base: '999'), '/stateful');
      case '/provider':
        return _fadeRoute(const CounterProviderView(q: '999'), '/provider');
      default:
        return _fadeRoute(const View404(), '/404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: (_, __, ___) => child,
        transitionDuration: const Duration(milliseconds: 100),
        transitionsBuilder: (_, animation, __, ____) => (kIsWeb)
            ? child
            // ? FadeTransition(
            //     opacity: animation,
            //     child: child,
            //   )
            : CupertinoPageTransition(
                primaryRouteAnimation: animation,
                secondaryRouteAnimation: __,
                child: child,
                linearTransition: true));
  }
}
