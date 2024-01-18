import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../Project/TextFormField.dart';
/*
class MyApp extends StatelessWidget {
  get route => null;

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<HomePage> {
  get route => null;
  int pressedButtonNo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(padding: EdgeInsets.zero, children: [
    Container(
    decoration: BoxDecoration(
    color: Theme.of(context).primaryColor,
    borderRadius: const BorderRadius.only(
    bottomRight: Radius.circular(50),
    ),
    ),
    child: Column(
    children: [
    const SizedBox(height: 50),
    ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 30),
    title: Text('Police Service!',
    style: Theme.of(context)
        .textTheme
        .headlineSmall
        ?.copyWith(color: Colors.white)),
    subtitle: Text('Aleppo',
    style: Theme.of(context)
        .textTheme
        .titleMedium
        ?.copyWith(color: Colors.white54)),
    trailing: const CircleAvatar(
    radius: 30,
    backgroundImage: AssetImage("images/R.png"),
    ),
    ),
    const SizedBox(height: 30)
    ],
    ),
    ),
    Container(
    color: Theme.of(context).primaryColor,
    child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    decoration: const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(topLeft: Radius.circular(200))),
    ),
    ),
    Column(
    children: [
    ATextFormField(hintText: " أدخل الرقم الوطني", mycontroller: , valid: (val) {
    return vaildInput(val!, 10, 40);
    }),
    Container(
    height: 7,
    ),
    ATextFormField(hintText: "الاسم الاول", mycontroller: , valid: (val) {
    return vaildInput(val!, 10, 40);
    }),
    Container(
    height: 7,
    ),
    ATextFormField(hintText: "الاسم الأوسط", mycontroller: name, valid: (val) {
    return vaildInput(val!, 0, 40);
    }),
    Container(
    height: 7,
    ),
    ATextFormField(hintText: "الاسم الأخير", mycontroller: name, valid: (val) {
    return vaildInput(val!, 10, 40);
    }),
    Container(
    height: 7,
    ),
    ATextFormField(hintText: "اسم الاب", mycontroller: name, valid: (val) {
    return vaildInput(val!, 10, 40);
    }),
    Container(
    height: 7,
    ),
    ATextFormField(hintText: "اسم ونسبة الام ", mycontroller: name, valid: (val) {
    return vaildInput(val!, 10, 40);
    }),
    Container(
    height: 7,
    ),
    ATextFormField(hintText: "الرقم الهاتف للتواصل", mycontroller: name, valid: (val) {
    return vaildInput(val!, 10, 10);
    }),
    Container(
    height: 7,
    ),
    ATextFormField(hintText: "العنوان الحالي", mycontroller: name, valid: (val) {
    return vaildInput(val!, 10, 40);
    }),
    Container(
    height: 7,
    ),
    ATextFormField(hintText: "تفاصيل الشكوى", mycontroller: name, valid: (val) {
    return vaildInput(val!,25, 200);
    }),
    Container(
    height: 7,
    ),
    Text(
    "ارفاق ",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.grey[300]),
    ),
    RadioListTile(
    value: "aldk",
    groupValue: country,
    onChanged: (val) {},
    title: Text("اتحمل مسؤولية الشكوى وكافة البيانات المدخلة"),
    ),
    Container(
    padding: EdgeInsets.only(left: 100, right: 100),
    height: 60,
    child: AMaterialButton(
    onPressed: () {
    Navigator.of(context)
        .pushNamedAndRemoveUntil("login", (route) => false);
    },
    Textt: 'موافق',
    ),
    )
    ]
    ,


    );
  }
}
*/