import 'package:flutter/material.dart';
import 'package:khadmaty_app/presentation/login_screens/buttom_nav_screens/home_screen.dart';
import 'package:khadmaty_app/presentation/login_screens/buttom_nav_screens/setting_screen.dart';
import 'package:khadmaty_app/presentation/login_screens/buttom_nav_screens/share_screen.dart';
import 'package:khadmaty_app/presentation/login_screens/first_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/designe_utiliti.dart';


void main() => runApp(MyApp());

BuildContext testContext;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE')
      ],

      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstlogScreen(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/first': (context) => ShareScreen(),
        '/second': (context) => SettingScreen(),

      },
    );
  }
}







class ProvidedStylesExample extends StatefulWidget {
  final BuildContext menuScreenContext;
  ProvidedStylesExample({Key key, this.menuScreenContext}) : super(key: key);

  @override
  _ProvidedStylesExampleState createState() => _ProvidedStylesExampleState();
}

class _ProvidedStylesExampleState extends State<ProvidedStylesExample> {
  PersistentTabController _controller;
  bool hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    hideNavBar = false;
  }

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      ShareScreen(),
      SettingScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: (""),
        activeColor: HexColor("#EA8600"),
        inactiveColor: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.share),
        title: (""),
        activeColor: HexColor("#EA8600"),
        inactiveColor: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings),
        title: (""),
        activeColor: HexColor("#EA8600"),
        inactiveColor: Colors.white,
      ),
    ];
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: HexColor("#037FC6"),
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0 ? 0.0 : kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true,
        // margin: EdgeInsets.all(10.0),
        popActionScreens: PopActionScreensType.once,
        bottomScreenMargin: 0.0,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => ShareScreen(),
            '/second': (context) => SettingScreen(),
          },
        ),
        selectedTabScreenContext: (context) {
          testContext = context;
        },
        hideNavigationBar: hideNavBar,
        decoration: NavBarDecoration(
            colorBehindNavBar: HexColor("#037FC6"),
            border: Border.all( color: HexColor("#037FC6")),
            borderRadius: BorderRadius.circular(5)),
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.neumorphic, // Choose the nav bar style with this property
      ),
    );
  }
}



























/*
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:khadmaty_app/presentation/login_screens/first_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
         Locale('ar', 'AE')
      ],

      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home : FirstlogScreen(),
    );
  }
}*/


