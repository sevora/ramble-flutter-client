import 'package:flutter/material.dart';

import '../../themes/light_mode_theme.dart';
import '../../views/pages/posts_widget.dart';
import '../../views/pages/search_widget.dart';
import '../../views/pages/view_profile_widget.dart';
import '../../views/pages/settings_widget.dart';

class RambleBottomNavigationBar extends StatelessWidget {
  RambleBottomNavigationBar({super.key, int? currentPage})
      : currentPage = currentPage ?? 0;

  final int currentPage;
  final Map<String, Widget> tabs = {
      'Posts': PostsWidget(),
      'Search': SearchWidget(),
      'ViewProfile': ViewProfileWidget(),
      'Settings': SettingsWidget(),
  };

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentPage,
      onTap: (i) => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => tabs[tabs.keys.toList()[i]] ?? const PostsWidget(),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        ),
      ),
      backgroundColor: LightModeTheme().primaryBackground,
      selectedItemColor: LightModeTheme().orangePeel,
      unselectedItemColor: LightModeTheme().secondaryText,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: 'Posts',
          icon: Icon(
            Icons.home_outlined,
            size: 24.0,
          ),
          activeIcon: Icon(
            Icons.home,
            size: 24.0,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Search',
          icon: Icon(
            Icons.search_rounded,
            size: 24.0,
          ),
          activeIcon: Icon(
            Icons.search_outlined,
            size: 24.0,
          ),
        ),
        BottomNavigationBarItem(
          label: 'ViewProfile',
          icon: Icon(
            Icons.person_outlined,
            size: 24.0,
          ),
          activeIcon: Icon(
            Icons.person,
            size: 24.0,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Settings',
          icon: Icon(
            Icons.settings_outlined,
            size: 24.0,
          ),
          activeIcon: Icon(
            Icons.settings_sharp,
            size: 24.0,
          ),
        )
      ],
    );
  }
}
