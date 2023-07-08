import 'package:flutter/material.dart';
import 'package:kaklimah_food/menu_screen.dart';

import 'about.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const ScreenOne(),
    const ScreenTwo(),
    const ScreenThree(),
    // ScreenFour(),
    // ScreenFive(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kak Limah Go Cafe"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue, // Set the color of the selected item
        unselectedItemColor: Colors.grey, // Set the color of unselected items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings),
          //   label: 'Settings',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.notifications),
          //   label: 'Notifications',
          // ),
        ],
      ),
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const MenuScreen();
  }
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen Two'),
    );
  }
}

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const aboutKedai();
  }
}

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen Four'),
    );
  }
}

class ScreenFive extends StatelessWidget {
  const ScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen Five'),
    );
  }
}
