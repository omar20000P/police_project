import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged:(val){
      //  print(val);
        controller.onPageChanged(val);
      } ,
        itemBuilder: (context, i) => Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Image.asset(
              onBoardingList[i].image!,
              fit: BoxFit.fill,
              height: 420,
              width: 400,
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              onBoardingList[i].title!,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ))),
          ],
        ));  }
}