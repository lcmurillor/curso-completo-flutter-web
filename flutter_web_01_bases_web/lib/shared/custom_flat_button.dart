import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton(
      {Key? key,
      required this.text,
      this.color = Colors.pink,
      required this.onPressed})
      : super(key: key);
  final String text;
  final Color color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(primary: color),
        onPressed: () => onPressed(),
        // setState(() {
        //   cont++;
        // });
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(text),
        ));
  }
}
