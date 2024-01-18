import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';


class Permits extends StatefulWidget {
  const Permits({super.key});

  @override
  State<Permits> createState() => MyHomePageState();
}

class MyHomePageState extends State<Permits> {
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
                    child: itemDashboard('بحث الحالة الجنائية',
                        CupertinoIcons.calendar_today, Colors.greenAccent),
                    onTap: () {

                    },
                  ),
                  InkWell(
                    child: itemDashboard('بحث الحالة المرورية',
                        CupertinoIcons.creditcard, Colors.greenAccent),
                    onTap: () {
                    },
                  ),
                  InkWell(
                    child: itemDashboard('براءة ذمه مرورية',
                        CupertinoIcons.car_detailed, Colors.greenAccent),
                    onTap: () {

                    },
                  ),
                  InkWell(
                    child: itemDashboard('شهادة فقدان',
                        CupertinoIcons.calendar_today, Colors.greenAccent),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('لمن يهمه الأمر',
                        CupertinoIcons.person, Colors.greenAccent),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('لمن يهمه الأمر_نزلاء',
                        CupertinoIcons.person_2, Colors.greenAccent),
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
