import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/screens/history_screen.dart';
import 'package:mobile/screens/home_screen.dart';
import 'package:mobile/screens/message_screen.dart';
import 'package:mobile/screens/setting_screen.dart';

class NavbarRoot extends StatefulWidget {
  const NavbarRoot({super.key});

  @override
  State<NavbarRoot> createState() => _NavbarRootState();
}

class _NavbarRootState extends State<NavbarRoot> {
  int _selectedIndex = 0;
  final _screen = [
    //Home screen
    HomeScreen(),
    //chat boot screen
    MessagesScreen(),
    //konsultasi screen
    HistoryScreen(),
    //setting screen
    SettingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screen[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF2447FF),
          unselectedItemColor: Color(0xFF939393),
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: "Message",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.doc_text_search),
              label: "Konsultasi",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Pengaturan",
            ),
          ],
        ),
      ),
    );
  }
}
