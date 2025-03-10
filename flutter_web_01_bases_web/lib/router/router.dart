import 'package:bases_web/router/route_handles.dart';
import 'package:fluro/fluro.dart';

class Flurrorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoute() {
    //handler: counterHandler, transitionType: TransitionType.none);
    router.define('/',
        handler: counterHandler, transitionType: TransitionType.none);
    router.define('/stateful',
        handler: counterHandler, transitionType: TransitionType.none);
    //forma de recivir paramentros en el URL /:base
    router.define('/stateful/:base',
        handler: counterHandler, transitionType: TransitionType.none);
    router.define('/provider',
        handler: counterproviderHandler, transitionType: TransitionType.none);

    router.define('/dashboard/users/:userid/:roleid',
        handler: dashboardUserHandler);

    router.notFoundHandler = pageNotFoundHandler;
  }

  //handlers
  //Es lo que espero que ejecute cuando entre en las rutas
  // static final Handler _counterHandler =
  //     Handler(handlerFunc: (context, parameters) {
  //   return CounterView(base: parameters['base']?.first ?? '3');
  // });

  // static final Handler _counterproviderHandler =
  //     Handler(handlerFunc: (context, parameters) {
  //   return CounterProviderView(q: parameters['q']?.first ?? '7');
  // });

  // static final Handler _dashboardUserHandler =
  //     Handler(handlerFunc: (context, parameters) {
  //   print(parameters);
  //   return const View404();
  // });

  // static final Handler _pageNotFoundHandler =
  //     Handler(handlerFunc: (_, __) => const View404());
}
