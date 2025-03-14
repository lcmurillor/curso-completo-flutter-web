import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Contact',
            style:
                GoogleFonts.roboto(fontSize: 80, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
