import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Caardcomplaint extends StatelessWidget {
  final void Function()? ontap;
  final String name_First;

  const Caardcomplaint(
      {super.key,
      required this.name_First,
      required this.ontap,
      required this.name_middle,
      required this.name_Last,
      required this.name_father,
      required this.name_mather,
      required this.address,
      required this.mobil,
      required this.text});

  final String name_middle;
  final String name_Last;
  final String name_father;
  final String name_mather;
  final String address;
  final String mobil;

  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/download.jpg",
                width: 100,
                height: 100,
                fit: BoxFit.fill,
              ),
              Text(
                "$name_First",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "$name_middle",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "$name_Last",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "$name_father",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "$name_mather",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "$address",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "$mobil",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "$text",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ));
  }
}
