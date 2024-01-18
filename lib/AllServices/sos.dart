import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:police/Project/TextFormField.dart';

import '../constant/valid.dart';

class Sos extends StatelessWidget {
  TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        backgroundColor: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        onTap: (val) {
          if (val == 1) {
            Navigator.of(context).pushNamed("homepage");
          }
          if (val == 0) {
            Navigator.of(context).pushNamed("numbers");
          }

          if (val == 2) {
            Navigator.of(context).pushNamed("sos");
          }
          print("$val");
        },
        items: [
          Icon(
            Icons.mobile_friendly,
            color: Colors.green,
            size: 30,
          ),
          Icon(
            Icons.home,
            size: 20,
          ),
          Icon(
            Icons.sos_rounded,
            color: Colors.red,
            size: 40,
          ),
        ],
      ),
      body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: ListView(
            children: [
              InkWell(
                child: Image.asset(
                  "images/imagee.jpg",
                  fit: BoxFit.cover,
                ),
                onTap: () {},
              ),
              ATextFormField(
                  hintText: "أدخل رقم الهاتف للطوارئ من فضلك               ",
                  mycontroller: number,
                  valid: (val) {
                    return vaildInput(val!, 7, 30);
                  }),
            ],
          )),
    );
  }
}
