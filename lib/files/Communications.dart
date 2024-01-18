import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Communications extends StatefulWidget {
  const Communications({super.key});

  @override
  State<Communications> createState() => MyHomePageState();
}

class MyHomePageState extends State<Communications> {
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
                    child: itemDashboard(
                        'طلب النجدة', Icons.sos_sharp, Colors.red),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil("sos", (route) => false);
                    },
                  ),
                  InkWell(
                    child: itemDashboard('الابلاغ عن شيك مرتجع',
                        Icons.credit_card_off_sharp, Colors.red),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('فتح شكوى جنائية',
                        Icons.local_police_outlined, Colors.red),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('التواصل مع الضحية',
                        CupertinoIcons.person_2, Colors.red),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('الشرطة السياحية',
                        Icons.wc_outlined, Colors.red),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('الاستعلام عن البلاغات',
                        Icons.perm_media , Colors.red),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('الجرائم الالكترونية',
                        CupertinoIcons.keyboard_chevron_compact_down, Colors.red),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('البحث في القضايا المالية',
                        Icons.monetization_on_rounded, Colors.red),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('الخط الدبلوماسي',
                        Icons.handshake_outlined, Colors.red),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('الامتناع عن الدفع',
                        CupertinoIcons.xmark_rectangle, Colors.red),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('عودة للصفحة الرئيسية',
                        CupertinoIcons.backward_fill, Colors.black26),
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
