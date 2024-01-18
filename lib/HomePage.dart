import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:police/2/numberServes.dart';
import 'package:police/AllServices/sos.dart';
import 'package:police/main.dart';

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
  List Screens = [Numbers(), HomePage(), Sos()];
  int _selectedIndex = 1;

  get route => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              sharedPref.clear();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil("login", (route) => false);
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        backgroundColor: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        items: [
          Icon(
            Icons.mobile_friendly,
            color: Colors.green,
            size: 30,
          ),
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.sos_rounded,
            color: Colors.red,
            size: 40,
          ),
        ],
        onTap: (index) {
          setState(() {
            index = _selectedIndex;
            print(index);
          });
        },
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Screens[_selectedIndex],
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
                    child: itemDashboard(
                        'خدمات شرطة حلب', CupertinoIcons.person_2, Colors.blue),
                    onTap: () {
                      Navigator.of(context).pushNamed("allservices");
                    },
                  ),
                  InkWell(
                    child: itemDashboard('فتح شكوى جنائية',
                        CupertinoIcons.book_fill, Colors.blue),
                    onTap: () {
                      Navigator.of(context).pushNamed("Cardcomplaint");
                    },
                  ),
                  InkWell(
                    child: itemDashboard('فتح شكوى مرورية',
                        CupertinoIcons.tram_fill, Colors.blue),
                    onTap: () {
                      Navigator.of(context).pushNamed("traffic");
                    },
                  ),
                  InkWell(
                    child: itemDashboard('الاستعلام عن مفقود',
                        CupertinoIcons.person_2, Colors.blue),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('المخالفات المرورية',
                        CupertinoIcons.person_2, Colors.blue),
                    onTap: () {
                      Navigator.of(context).pushNamed("car");
                    },
                  ),
                  InkWell(
                    child: itemDashboard('حجز موعد\n(مراجعة)',
                        CupertinoIcons.person_2, Colors.blue),
                    onTap: () {
                      Navigator.of(context).pushNamed("time");
                    },
                  ),
                  InkWell(
                    child: itemDashboard(
                        'مراكز شرطة حلب', CupertinoIcons.person_2, Colors.blue),
                    onTap: () {
                      Navigator.of(context).pushNamed("map");
                    },
                  ),
                  InkWell(
                    child: itemDashboard('الإبلاغ عن مركبة',
                        CupertinoIcons.person_2, Colors.blue),
                    onTap: () {
                      Navigator.of(context).pushNamed("car");
                    },
                  ),
                  InkWell(
                    child: itemDashboard(
                        'القسم الإعلامي', CupertinoIcons.person_2, Colors.blue),
                    onTap: () {
                      Navigator.of(context).pushNamed("");
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
