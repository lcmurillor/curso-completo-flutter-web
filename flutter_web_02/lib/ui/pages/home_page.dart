import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertial_landing_page/providers/page_provider.dart';
import 'package:vertial_landing_page/ui/shared/custom_app_menu.dart';
import 'package:vertial_landing_page/ui/views/views.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: buildBoxDecoration(),
        child: Stack(
          children: const [
            _HomeBody(),
            Positioned(right: 20, top: 20, child: CustomAppMenu())
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => const BoxDecoration(
      gradient: LinearGradient(
          colors: [Colors.pink, Colors.blue],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5]));
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return PageView(
      controller: pageProvider.scrollController,
      scrollBehavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      }),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: const [
        HomeView(),
        AboutView(),
        ContactView(),
        LocationView(),
        PricingView()
      ],
    );
  }
}
