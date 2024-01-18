import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';


class  Community extends StatefulWidget {
  const  Community({super.key});

  @override
  State< Community> createState() => MyHomePageState();
}

class MyHomePageState extends State< Community> {
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
                    child: itemDashboard('التحقق في المستندات',
                        CupertinoIcons.rectangle_fill_on_rectangle_angled_fill, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('تأمين الفعاليات',
                        CupertinoIcons.arrow_right_arrow_left_circle, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard(
                        'مرضى القلب', CupertinoIcons.person, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('إتلاف المتفجرات',
                        CupertinoIcons.circle_lefthalf_fill, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('ضحايا الاتجار بالبشر',
                        CupertinoIcons.share_solid, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('دعم المرأة والطفل',
                        CupertinoIcons.person_2_alt, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('طلب أنشطة شرطة حلب',
                        CupertinoIcons.paperplane_fill, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('تطوع مع شرطة حلب',
                        CupertinoIcons.hand_raised, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('مرفقات خدمات ',
                        CupertinoIcons.bag_fill, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('المسار السريع',
                        CupertinoIcons.antenna_radiowaves_left_right, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard(
                        'حالة الطلبات', CupertinoIcons.folder_fill_badge_minus, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard(
                        'تأمين مسكن', CupertinoIcons.home, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('تقديم شكوى عمالية',
                        CupertinoIcons.arrow_right_arrow_left_circle, Colors.orange),
                    onTap: () {},
                  ),

                  InkWell(
                    child: itemDashboard(
                        'طلب محاضر', CupertinoIcons.film_fill, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard(
                        'طلب إحصائيات', CupertinoIcons.arrow_right_arrow_left, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('تأجير حواجز حديدية',
                        CupertinoIcons.rectangle_compress_vertical, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('الوظائف الشاغرة',
                        CupertinoIcons.bag_fill_badge_plus, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('الروح الإيجابية',
                        CupertinoIcons.smiley, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard('المرافق الرياضية',
                        CupertinoIcons.sportscourt, Colors.orange),
                    onTap: () {},
                  ),
                  InkWell(
                    child: itemDashboard(
                        'اسأل عالم', CupertinoIcons.volume_up, Colors.orange),
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
