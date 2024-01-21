import 'package:flutter/material.dart';
import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/features/account/account_page.dart';
import 'package:tech_shop/features/home/views/pages/home_page/home_page.dart';
import 'package:tech_shop/features/news/news_page.dart';

class AppNavBar extends StatefulWidget {
  const AppNavBar({super.key});

  @override
  State<AppNavBar> createState() => _AppNavBarState();
}

class _AppNavBarState extends State<AppNavBar> {
  int _index = 0;
  final List<Widget> _screens = const [
    HomePage(),
    NewsPage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: _index == 0
                ? const Icon(
                    Icons.home,
                    color: AppColor.blueColor,
                  )
                : Icon(
                    Icons.home_outlined,
                    color: AppColor.greyColor,
                  ),
          ),
          BottomNavigationBarItem(
            label: "News",
            icon: _index == 1
                ? const Icon(
                    Icons.newspaper,
                    color: AppColor.blueColor,
                  )
                : Icon(
                    Icons.newspaper_outlined,
                    color: AppColor.greyColor,
                  ),
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: _index == 2
                ? const Icon(
                    Icons.account_circle,
                    color: AppColor.blueColor,
                  )
                : Icon(
                    Icons.account_circle_outlined,
                    color: AppColor.greyColor,
                  ),
          ),
        ],
      ),
      body: _screens[_index],
    );
  }
}
