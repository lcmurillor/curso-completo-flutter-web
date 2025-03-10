import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:vertial_landing_page/providers/page_provider.dart';
import 'package:vertial_landing_page/ui/pages/home_page.dart';

final homehandler = Handler(handlerFunc: (context, parameters) {
  final page = parameters['page']!.first;
  if (page != '/') {
    final pageProvider = Provider.of<PageProvider>(context!, listen: false);
    pageProvider.createScrollController(page);
    return const HomePage();
  }
  return null;
});
