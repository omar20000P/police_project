import 'package:flutter/material.dart';

class AMaterialButton extends StatelessWidget {
  final void Function()? onPressed;
  final String Textt;

  const AMaterialButton({required this.onPressed, required this.Textt});

  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      color: Color(0xff107163),
      onPressed: onPressed,
      child: Text(Textt),
    );
  }
}
