import 'package:bases_web/views/views.dart';
import 'package:fluro/fluro.dart';

final Handler counterHandler = Handler(handlerFunc: (context, parameters) {
  return CounterView(base: parameters['base']?.first ?? '3');
});

final Handler counterproviderHandler =
    Handler(handlerFunc: (context, parameters) {
  return CounterProviderView(q: parameters['q']?.first ?? '7');
});

final Handler dashboardUserHandler =
    Handler(handlerFunc: (context, parameters) {
  //print(parameters);
  return const View404();
});

final Handler pageNotFoundHandler =
    Handler(handlerFunc: (_, __) => const View404());
