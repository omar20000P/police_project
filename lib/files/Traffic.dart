import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';



class Traffic extends StatefulWidget {
  const Traffic({super.key});

  @override
  State<Traffic> createState() => MyHomePageState();
}

class MyHomePageState extends State<Traffic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
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
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(200))),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  InkWell(
                    child: itemDashboard('دفع المخالفات المرورية',
                        Icons.car_rental, Colors.purple),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil("car", (route) => false);
                    },
                  ),
                  InkWell(
                    child: itemDashboard(
                        'تقرير حادث بسيط',
                        CupertinoIcons.plus_rectangle_on_rectangle,
                        Colors.purple),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('اعادة إصدار تقرير حادث',
                        CupertinoIcons.doc_person_fill, Colors.purple),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('تغير لون مركبة',
                        Icons.color_lens_outlined, Colors.purple),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('تقرير حادث ضد مجهول',
                        CupertinoIcons.eyedropper_halffull, Colors.purple),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('تقسيط المخالفات',
                        CupertinoIcons.money_euro_circle, Colors.purple),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('عودة للصفحة الرئيسية',
                        CupertinoIcons.backward_fill, Colors.grey),
                    onTap: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          "homepage", (route) => false);
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background) => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: Theme.of(context).primaryColor.withOpacity(.2),
                  spreadRadius: 2,
                  blurRadius: 5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: background,
                  shape: BoxShape.circle,
                ),
                child: Icon(iconData, color: Colors.white)),
            const SizedBox(height: 8),
            Text(title.toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
      );
}
