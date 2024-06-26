import 'package:flutter/material.dart';
import 'package:tech_shop/config/app_color.dart';
import 'package:tech_shop/features/account/views/account_page.dart';
import 'package:tech_shop/features/home/home_page.dart';
import 'package:tech_shop/features/news/views/pages/news_page.dart';

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
                    color: AppColor.purpleColor,
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
                    color: AppColor.purpleColor,
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
                    color: AppColor.purpleColor,
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
