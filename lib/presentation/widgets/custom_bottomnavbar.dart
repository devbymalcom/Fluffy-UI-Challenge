import 'package:enefty_icons/enefty_icons.dart';
import 'package:fluffy_challenge_week_1/core/extensions/extensions.dart';
import 'package:fluffy_challenge_week_1/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screwdriver/flutter_screwdriver.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: theme.textColor,
          inactiveIcon: const Icon(EneftyIcons.chart_2_outline),
          icon: const Icon(
            EneftyIcons.chart_2_bold,
          ),
          title: ("Home"),
          textStyle: const TextStyle(fontSize: 10),
          iconSize: 24.0),
      PersistentBottomNavBarItem(
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: theme.textColor,
          inactiveIcon: const Icon(EneftyIcons.money_3_outline),
          icon: const Icon(EneftyIcons.money_3_bold),
          title: ("Cash"),
          textStyle: const TextStyle(fontSize: 10),
          iconSize: 24.0),
      PersistentBottomNavBarItem(
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: theme.textColor,
          inactiveIcon: Expanded(
            child: Image.asset(
              'assets/images/telecel_logo_background.png',
              // height: 24,
            ),
          ),
          icon: Expanded(
            child: Image.asset(
              'assets/images/telecel_logo_background.png',
              // height: 24,
            ),
          ),
          iconSize: 24.0),
      PersistentBottomNavBarItem(
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: theme.textColor,
          inactiveIcon: const Icon(EneftyIcons.add_circle_outline),
          title: ("Bundles"),
          textStyle: const TextStyle(fontSize: 10),
          icon: const Icon(EneftyIcons.add_circle_bold),
          iconSize: 24.0),
      PersistentBottomNavBarItem(
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: theme.textColor,
          inactiveIcon: const Icon(EneftyIcons.setting_2_outline),
          icon: const Icon(EneftyIcons.setting_2_bold),
          title: ("Settings"),
          textStyle: const TextStyle(fontSize: 10),
          iconSize: 24.0),
    ];
  }

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const Center(child: Text('Coming soon')),
      const Center(child: Text('Coming soon')),
      const Center(child: Text('Coming soon')),
      const Center(child: Text('Coming soon')),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      backgroundColor: context.theme.scaffoldBackgroundColor,
      decoration: NavBarDecoration(
        border: Border(
          top: BorderSide(color: theme.textColor.withOpacity(0.05), width: 0.5),
          left:
              BorderSide(color: theme.textColor.withOpacity(0.05), width: 0.5),
          right:
              BorderSide(color: theme.textColor.withOpacity(0.05), width: 0.5),
        ),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.elliptical(30, 20),
            topRight: Radius.elliptical(30, 20)),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15,
      navBarHeight: 65,
    );
  }
}
