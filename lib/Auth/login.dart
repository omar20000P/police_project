import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:police/constant/linkapi.dart';
import 'package:police/main.dart';
import '../Project/MaterialButton.dart';
import '../Project/TextFormField.dart';
import '../constant/curd.dart';
import '../constant/valid.dart';


class Login extends StatefulWidget {
  Curd crud = Curd();

  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isloading = false;
  GlobalKey<FormState> formstate = GlobalKey();

  Curd _crud = Curd();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  login() async {
    if (formstate.currentState!.validate()) {
      isloading = true;
      setState(() {});
      var response = await _crud.postRequest(
          linkLogin, {"email": email.text, "password": password.text});
      isloading = false;
      setState(() {});
      if (response['status'] == "success") {
        sharedPref.setString("id", response['data']['id'].toString());
        sharedPref.setString(
            "username", response['data']['username'].toString());
        sharedPref.setString("email", response['data']['email'].toString());

        Navigator.of(context)
            .pushNamedAndRemoveUntil("homepage", (route) => false);
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("إغلاق"))
            ],
            title: Text(
              "تنبيه",
              style: TextStyle(color: Colors.blue),
            ),
            contentPadding: const EdgeInsets.only(left: 20),
            content: Text(
                'البريد الالكتروني أو كلمة المرور خطأ\n أو الحساب غير موجود'),
          ),
        );
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: isloading == true
            ? Center(
                child: Lottie.asset(
                  "lottie/Animationlooding.json",
                  height: 120,
                ),
              )
            : Form(
                key: formstate,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: ListView(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 50),
                        Center(
                            child: Lottie.asset(
                          "lottie/Animation.json",
                          height: 120,
                          // fit: BoxFit.fill,
                        )),
                        Container(height: 20),
                        Center(
                          child: const Text("تسجيل الدخول",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                        ),
                        Container(height: 10),
                        Center(
                          child: const Text("تسجيل الدخول لإستخدام تطبيق شرط حلب",
                              style: TextStyle(color: Colors.grey)),
                        ),
                        Container(height: 20),
                        Center(
                          child: const Text(
                            "البريد الالكتروني",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Container(height: 10),
                        ATextFormField(
                            hintText: "ُ                          أدخل البريد الالكتروني",
                            mycontroller: email,
                            valid: (val) {
                              return vaildInput(val!, 10, 40);
                            }),
                        Container(height: 10),
                        Center(
                          child: const Text(
                            "كلمة المرور",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Container(height: 10),
                        ATextFormField(
                            hintText: "                              أدخل كلمة المرور ",
                            mycontroller: password,
                            valid: (val) {
                              return vaildInput(val!, 7, 30);
                            }),
                        Container(height: 20,),


                      ],
                    ),
                    AMaterialButton(
                      onPressed: () async {
                        await login();
                      },
                      Textt: 'تسجيل الدخول',
                    ),
                    Container(height: 20),
                    MaterialButton(
                        height: 40,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.red[700],
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("تسجيل الدخول عن طريق حساب غوغل  "),
                            Image.asset(
                              "images/img.png",
                              width: 20,
                            )
                          ],
                        )),
                    Container(height: 20),
                    // Text("Don't Have An Account ? Resister" , textAlign: TextAlign.center,)
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("signup");
                      },
                      child: const Center(
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                            text: "ليس لديك حساب ضمن شرطة حلب ؟  ",
                          ),
                          TextSpan(
                              text: "إنشاء حساب",
                              style: TextStyle(
                                  color: Color(0xff107163),
                                  fontWeight: FontWeight.bold)),
                        ])),
                      ),
                    )
                  ]),
                )));
  }
}
