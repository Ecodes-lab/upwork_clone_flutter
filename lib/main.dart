import 'package:flutter/material.dart';
import 'package:upwork_clone/features/job/screens/jobs_screen.dart';
import 'package:upwork_clone/managers/assets_manager.dart';
import 'package:upwork_clone/managers/colors_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upwork Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorManager.scaffoldBgColor,
        appBarTheme: AppBarTheme(
          color: ColorManager.cardColor,
        ),
      ),
      home: const BottomTabBar(),
    );
  }
}

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    JobsScreen(),
    Icon(
      Icons.camera,
      size: 150,
    ),
    Icon(
      Icons.home,
      size: 150,
    ),
    Icon(
      Icons.notification_add,
      size: 150,
    ),
    Icon(
      Icons.message,
      size: 150,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Jobs",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_document),
            label: "Proposals",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task_outlined),
            label: "Contracts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: "Alerts",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
