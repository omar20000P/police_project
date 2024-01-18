import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class Allservices extends StatefulWidget {
  const Allservices({super.key});

  @override
  State<Allservices> createState() => MyHomePageState();
}

class MyHomePageState extends State<Allservices> {
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
                    child: itemDashboard('خدمات البلاغات',
                        Icons.mobile_friendly, Colors.blue),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed("communications");
                    },
                  ),
                  InkWell(
                    child: itemDashboard('الخدمات المرورية',
                        CupertinoIcons.car_detailed, Colors.blue),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed("traffic");
                    },
                  ),
                  InkWell(
                    child: itemDashboard('الخدمات الجنائية',
                        CupertinoIcons.folder_fill, Colors.blue),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed("criminal");
                    },
                  ),

                  InkWell(
                    child: itemDashboard('الشهادات والتصاريح',
                        CupertinoIcons.bag_fill_badge_plus, Colors.blue),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed("permits");
                    },
                  ),
                  InkWell(
                    child: itemDashboard('الخدمات المجتمعية',
                        CupertinoIcons.train_style_one, Colors.blue),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed("community");
                    },
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
