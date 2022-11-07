import 'package:booktickets/screens/home_screen.dart';
import 'package:booktickets/screens/profile_screen.dart';
import 'package:booktickets/screens/search_screen.dart';
import 'package:booktickets/screens/ticket_screen.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF536460),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.home_12_regular),
              activeIcon: Icon(FluentIcons.home_12_filled),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.search_12_regular),
              activeIcon: Icon(FluentIcons.search_12_filled),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.ticket_horizontal_20_regular),
              activeIcon: Icon(FluentIcons.ticket_horizontal_20_filled),
              label: "Ticket"),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.person_20_regular),
              activeIcon: Icon(FluentIcons.person_20_filled),
              label: "Profile"),
        ],
      ),
    );
  }
}
