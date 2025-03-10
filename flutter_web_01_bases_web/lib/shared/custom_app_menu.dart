import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Permite construir un Widget segun el dispositivo y sus dimenciones
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return (constraints.maxWidth > 710)
            ? const _TableDesktopMenu()
            : const _MovilMenu();
      },
    );
  }
}

class _TableDesktopMenu extends StatelessWidget {
  const _TableDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      //height: 50,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            //onPressed: () => Navigator.pushNamed(context, '/stateful'),
            //onPressed: () => navigationServices.navigateTo('/stateful'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador Provider',
            //onPressed: () => Navigator.pushNamed(context, '/provider'),
            //onPressed: () => navigationServices.navigateTo('/provider'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Otra pagina',
            //onPressed: () => Navigator.pushNamed(context, '/abc'),
            //onPressed: () => navigationServices.navigateTo('/abc'),
            onPressed: () => locator<NavigationService>().navigateTo('/abc'),
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Stateful 100',
            //onPressed: () => Navigator.pushNamed(context, '/abc'),
            //onPressed: () => navigationServices.navigateTo('/abc'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful/100'),
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Provider 500',
            //onPressed: () => Navigator.pushNamed(context, '/abc'),
            //onPressed: () => navigationServices.navigateTo('/abc'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider?q=500'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _MovilMenu extends StatelessWidget {
  const _MovilMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: double.infinity,
      //height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            //onPressed: () => Navigator.pushNamed(context, '/stateful'),
            //onPressed: () => navigationServices.navigateTo('/stateful'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador Provider',
            //onPressed: () => Navigator.pushNamed(context, '/provider'),
            //onPressed: () => navigationServices.navigateTo('/provider'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Otra pagina',
            //onPressed: () => Navigator.pushNamed(context, '/abc'),
            //onPressed: () => navigationServices.navigateTo('/abc'),
            onPressed: () => locator<NavigationService>().navigateTo('/abc'),
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Stateful 100',
            //onPressed: () => Navigator.pushNamed(context, '/abc'),
            //onPressed: () => navigationServices.navigateTo('/abc'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful/100'),
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Provider 500',
            //onPressed: () => Navigator.pushNamed(context, '/abc'),
            //onPressed: () => navigationServices.navigateTo('/abc'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider?q=500'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
