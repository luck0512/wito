import 'package:flutter/material.dart';
import 'package:wito_app/themes/colors.dart';
import 'package:wito_app/screens/views/miradi.dart';
import 'package:wito_app/screens/views/biashara.dart';
import 'package:wito_app/screens/views/nyumbani.dart';
import 'package:wito_app/screens/views/mpangilio.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageindex = 0;

  final List<Widget> _pages = [
    NyumbaniScreen(),
     const BiasharaSCreen(),
     const MiradiScreen(),
     const MpangilioScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Styles.primaryColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: _pageindex,
          onTap: (value) {
            setState(() {
              _pageindex = value;
            });
          },
          unselectedItemColor: Styles.lightCOlor,
          selectedItemColor: Styles.whiteColor,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Nyumbani'),
            BottomNavigationBarItem(
                icon: Icon(Icons.payments), label: 'Biashara'),
            BottomNavigationBarItem(
                icon: Icon(Icons.business_center), label: 'Miradi'),
            // BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Siasa'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Mpangilio'),
          ]),
    );
  }
}
