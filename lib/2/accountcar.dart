import 'package:flutter/material.dart';
import '../Project/MaterialButton.dart';
class Car extends StatelessWidget {
  @override
  String? country;
  Widget build(BuildContext context) {
    return initWidget(context);
  }
  Widget initWidget(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "               عين حلب",
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("homepage", (route) => false);
                },
                icon: const Icon(
                  Icons.exit_to_app,
                  color: Colors.blue,
                ))
          ],
        ),
        body: ListView(children: [
              Container(
                color: Colors.grey,
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          maxLines: 1,
                          autofocus: false,
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'أدخل رقم السيارة من فضلك',
                          ),
                          cursorColor: Colors.blue,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.car_repair,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text("إختر اسم المحافظة من فضلك",style: TextStyle(color:Colors.blue, fontSize: 20 ),),
              ),
                    RadioListTile(value: "aleppo", groupValue: country, onChanged: (val){},title:Text("حلب")),
                    RadioListTile(value: "damas", groupValue: country, onChanged: (val){},title:Text("دمشق")),
                    RadioListTile(value: "homs", groupValue: country, onChanged: (val){},title:Text("ريف دمشق")),
                    RadioListTile(value: "hama", groupValue: country, onChanged: (val){},title:Text("حمص")),
                    RadioListTile(value: "sa", groupValue: country, onChanged: (val){},title:Text("حماه")),
                    RadioListTile(value: "aldk", groupValue: country, onChanged: (val){},title:Text("درعا")),
                    RadioListTile(value: "aldk", groupValue: country, onChanged: (val){},title:Text("القنيطرة")),
                    RadioListTile(value: "aldk", groupValue: country, onChanged: (val){},title:Text("الحسكه")),
                    RadioListTile(value: "aldk", groupValue: country, onChanged: (val){},title:Text("دير الزور")),
                    RadioListTile(value: "aldk", groupValue: country, onChanged: (val){},title:Text("السويداء")),
                    RadioListTile(value: "aldk", groupValue: country, onChanged: (val){},title:Text("طرطوس")),
                    RadioListTile(value: "aldk", groupValue: country, onChanged: (val){},title:Text("اللاذقية")),
                    RadioListTile(value: "aldk", groupValue: country, onChanged: (val){},title:Text("إدلب")),
          Container(padding: EdgeInsets.only(left: 100,right: 100),
           height: 50,
           child: AMaterialButton(onPressed: () {
      Navigator.of(context)
            .pushNamedAndRemoveUntil("login", (route) => false);
      }, Textt: 'موافق',),
         )
        ]));
  }
}
