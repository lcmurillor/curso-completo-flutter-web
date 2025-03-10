import 'package:fluro/fluro.dart';
import 'package:vertial_landing_page/router/router_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    //rutas
    router.define('/:page', handler: homehandler);
    //404
    router.notFoundHandler = homehandler;
  }
}
