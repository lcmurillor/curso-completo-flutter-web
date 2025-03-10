import 'package:flutter/Material.dart';
import 'package:universal_html/html.dart' as html;

class PageProvider extends ChangeNotifier {
  PageController scrollController = PageController();

  final List<String> _page = [
    'home',
    'about',
    'contact',
    'location',
    'pricing'
  ];
  int _currentIndex = 0;

  createScrollController(String routeName) {
    scrollController = PageController(initialPage: getPageIndex(routeName));
    html.document.title = _page[getPageIndex(routeName)];
    scrollController.addListener(() {
      final index = (scrollController.page ?? 0).round();
      if (index != _currentIndex) {
        html.window.history.pushState(null, 'none', '#/${_page[index]}');
        _currentIndex = index;
        html.document.title = _page[index];
      }
    });
  }

  int getPageIndex(String routeName) {
    // ignore: prefer_contains
    return _page.indexOf(routeName) == -1 ? 0 : _page.indexOf(routeName);
  }

  gotTo(int index) {
    html.window.history.pushState(null, 'none', '#/${_page[index]}');
    //final routeName = _page[index];
    scrollController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
}
