import 'package:flutter/material.dart';
import 'package:khadmaty_app/core/designe_utiliti.dart';
import 'package:khadmaty_app/presentation/login_screens/buttom_nav_screens/setting_screen.dart';
import 'package:khadmaty_app/presentation/login_screens/buttom_nav_screens/share_screen.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import 'home_screen.dart';

class TestbottomNav extends StatefulWidget {
  @override
  _TestbottomNavState createState() => _TestbottomNavState();
}

class _TestbottomNavState extends State<TestbottomNav> {

  int currentTab = 0;
  final List<Widget> screens = [
    HomeScreen(),
    ShareScreen(),
    SettingScreen(),
  ];
  Widget currentScreen = HomeScreen();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(child: currentScreen, bucket: bucket),
      bottomNavigationBar: bmnav.BottomNav(
        color: HexColor("#037FC6"),
        index: currentTab,
        labelStyle: bmnav.LabelStyle(visible: false),
        onTap: (i) {
          setState(() {
            currentTab = i;
            currentScreen = screens[i];
          });
          },
        items: [
          bmnav.BottomNavItem( Icons.home, label: ''),
          bmnav.BottomNavItem(Icons.share, label: ''),
          bmnav.BottomNavItem(Icons.settings, label: ''),
    ],
        elevation: 0.0,
        iconStyle: bmnav.IconStyle(
          size: 30,
          onSelectSize: 27,
          color: Colors.white,
          onSelectColor: HexColor("#EA8600")
        ),
    ),
    );
  }
}
