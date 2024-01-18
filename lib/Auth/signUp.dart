import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:police/constant/linkapi.dart';
import '../Project/MaterialButton.dart';
import '../Project/TextFormField.dart';
import '../constant/curd.dart';
import '../constant/valid.dart';


class SignUp extends StatefulWidget {
  GlobalKey<FormState> formstate = GlobalKey();
  Curd crud = Curd();

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formstate = GlobalKey();
  Curd _crud = Curd();
  bool isloading = false;
  TextEditingController id = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  signUp() async {
    if (formstate.currentState!.validate()) {
      isloading = true;
      setState(() {});
      var response = await _crud.postRequest(linkSignUp, {
        "id": id.text,
        "email": email.text,
        "password": password.text
      });
      isloading = false;
      setState(() {});
      if (response['status'] == "success") {
        Navigator.of(context)
            .pushNamedAndRemoveUntil("success", (route) => false);
      } else {
        print("errorsignup");
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
                padding: EdgeInsets.all(20),
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
                        child: Center(
                          child: const Text("إنشاء الحساب",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(height: 10),
                      Center(
                        child: const Text("إنشاء الحساب لإستخدام تطبيق شرط حلب",
                            style: TextStyle(color: Colors.grey)),
                      ),
                      Container(height: 10),
                      Center(
                        child: const Text(
                          "الرقم الوطني",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Container(height: 10),
                      ATextFormField(
                        hintText: "                    أدخل البريد الالكتروني",
                        mycontroller: id,
                        valid: (val) {
                          return vaildInput(val!, 10, 50);
                        },
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
                          hintText: 'ُ                                 أدخل البريد الالكتروني',
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

                          hintText: '                              أدخل كلمة المرور ',
                          mycontroller: password,
                          valid: (val) {
                            return vaildInput(val!, 7, 30);
                          }),
                      Container(height: 20,),

                    ],
                  ),
                  AMaterialButton(
                    onPressed: () async {
                      await signUp();
                    },
                    Textt: 'إنشاء حساب ضمن تطبيق شرطة حلب',
                  ),
                  Container(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("login");
                    },
                    child: const Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "لديك حساب ضمن شرطة حلب ؟ ",
                        ),
                        TextSpan(
                            text: "تسجيل دخول",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ])),
                    ),
                  )
                ]),
              ),
            ),
    );
  }
}
