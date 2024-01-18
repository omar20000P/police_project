import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Project/TextFormField.dart';
import '../../constant/curd.dart';
import '../../constant/linkapi.dart';
import '../../main.dart';

class EditdComplaint extends StatelessWidget {
  Curd crud = Curd();

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController name_First = TextEditingController();

  /* TextEditingController name_middle = TextEditingController();
  TextEditingController name_Last = TextEditingController();
  TextEditingController name_father = TextEditingController();
  TextEditingController name_mather = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController mobil = TextEditingController();
  TextEditingController Text = TextEditingController();*/

  edit() async {
    if (formstate.currentState!.validate()) {
      var response = await crud.postRequest(linkEdit, {
        "name_First": name_First.text,
        /*"name_middle": name_middle.text,
        "name_Last": name_Last.text,
        "name_father": name_father.text,
        "name_mather": name_mather.text,

        "address": address.text,
        "mobil": mobil.text,

        "Text": Text.text,*/
        "id": sharedPref.getString("id")
      });
      if (response['status'] == "success") {
        // Navigator.of(context as BuildContext).pushNamed("homepage");
        print("/////////////////////////////////////////");
      } else {
        print("=======================================");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          key: formstate,
          child: ListView(
            children: [
              ATextFormField(
                  hintText: "name", mycontroller: name_First, valid: (val) {}),
              Container(
                height: 20,
              ),
              MaterialButton(
                onPressed: () async {
                  await edit();
                },
                child: Text("edit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
