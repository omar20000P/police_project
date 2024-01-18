import 'package:flutter/material.dart';
import 'package:police/Auth/login.dart';
import 'package:police/2/accountcar.dart';

import 'package:police/2/numberServes.dart';

import 'package:police/files/allservices.dart';
import 'package:police/onBoarding/view/screen/OnBoarding.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '2/time.dart';
import 'AllServices/criminal_complaint/add.dart';
import 'AllServices/criminal_complaint/criminalA.dart';
import 'AllServices/criminal_complaint/edit.dart';
import 'Auth/success.dart';
import 'HomePage.dart';
import 'Auth/signUp.dart';

import 'AllServices/sos.dart';

import 'AllServices/map.dart';

import 'files/ Community.dart';

import 'files/Communications.dart';
import 'files/Criminal.dart';

import 'files/Permits.dart';
import 'files/Traffic.dart';

late SharedPreferences sharedPref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:
          sharedPref.getString("id") == null ? "login" : "homepage",
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        "time": (context) => Time(),

        "map": (context) => map(),
        "onBoarding": (context) => OnBoarding(),
        "homepage": (context) => HomePage(),
        "Cardcomplaint": (context) => Cardcomplaint(),
        "car": (context) => Car(),
        "sos": (context) => Sos(),
        "numbers": (context) => Numbers(),
        "communications": (context) => Communications(),
        "criminal ": (context) => Criminal(),
        "traffic": (context) => Traffic(),
        "permits": (context) => Permits(),
        "community": (context) => Community(),
        "signup": (context) => SignUp(),
        "login": (context) => Login(),
        "success": (context) => Success(),
        "allservices": (context) => Allservices(),
        "editdComplaint": (context) => EditdComplaint(),
        "addComplaint": (context) => AddComplaint(),
      },
    );
  }
}
