import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/curd.dart';

import '../../constant/linkapi.dart';
import '../../main.dart';
import 'Cardcomplaint.dart';

class Cardcomplaint extends StatefulWidget {
  Curd crud = Curd();

  @override
  State<Cardcomplaint> createState() => _Cardcomplaint();
}

class _Cardcomplaint extends State<Cardcomplaint> {
  Curd _crud = Curd();

  getData() async {
    var response =
        await _crud.postRequest(linkSignUp, {"id": sharedPref.getString("id")});
    return response;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed("addComplaint");
          },
          child: Icon(Icons.add),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(children: [
            FutureBuilder(
                future: getData(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data['data'].length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, i) {
                          return Caardcomplaint(
                            name_First:
                                "${snapshot.data['data'][i]['criminal_complaint']}",
                            ontap: () {},
                            name_middle: '',
                            name_Last: '',
                            name_father: '',
                            name_mather: '',
                            address: '',
                            mobil: '',
                            text: '',
                          );
                        });
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: Text("loading"),
                    );
                  }
                  return Center(
                    child: Text("loading"),
                  );
                })
          ]),
        ));
  }
}
