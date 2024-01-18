import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import '../../controller/onboarding_controller.dart';
import '../wiget/onbording/CustomDotControllerOnBoarding.dart';
import '../wiget/onbording/custombutton.dart';
import '../wiget/onbording/customslider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: [
            Expanded(
                flex: 5,
                child: CustomSliderOnBoarding()),
            Expanded(
                flex: 1,
                child:Column(children: [
                  CustomDotControllerOnBoarding(),
                  Spacer(
                    flex: 2,
                  ),
                  CustomButtonOnBoarding()
                ]))
          ]),
        ));
  }
}