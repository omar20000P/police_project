import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Numbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),



        body: Column(
          children: [
            Container(
              height: 20,
            ),
            Text(
              "التواصل الاجتماعي",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(height: 10,),
                  MaterialButton(
                      height: 35,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      color: Colors.blue,
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Colors.white,
                            size: 25,
                          ),
                          Text("فيسبوك")
                        ],
                      )),
                  Container(height: 30,),
                  MaterialButton(
                    height: 35,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    color: Colors.red,
                    onPressed: () {},
                    child: Column(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25,
                        ),
                        Text("يوتيوب")
                      ],
                    ),
                  ),
                  Container(height: 30,),
                  MaterialButton(
                      height: 35,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      color: Colors.pinkAccent,
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.face,
                            color: Colors.white,
                            size: 25,
                          ),
                          Text("إنستغرام")
                        ],
                      )),
                  Container(height: 30,),
                 MaterialButton(
                      height: 35,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      color: Colors.blue,
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.access_alarm_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                          Text("تويتر")
                        ],
                      )),
                  Container(height: 30,),
                  Container()
                ],
              ),

            ),
          ],
        ));
  }
}
