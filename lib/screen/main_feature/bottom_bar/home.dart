import 'package:flutter/material.dart';

import '../../../helper/services/auth_service.dart';

import '../home/home_screen.dart';

import 'order.dart';

import 'profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  String userName = "";
  String email = "";
  String phone = "";
  AuthService authService = AuthService();

  String groupName = "";
  @override
  void initState() {
    super.initState();

    _pages = [
      {
        'page': const HomeScreen(),
        'title': 'Home',
      },
      {
        'page': const OrderScreen(),
        'title': 'Order',
      },
      {
        'page': Profile(
          email: email,
          username: userName,
          phone: phone,
        ),
        'title': 'Profile',
      },
    ];
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  //String Manipulation
  String getId(String res) {
    return res.substring(0, res.indexOf("_"));
  }

  String getName(String res) {
    return res.substring(res.indexOf("_") + 1);
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        onTap: _selectPage,
        backgroundColor: Colors.white,
        unselectedItemColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'My Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
