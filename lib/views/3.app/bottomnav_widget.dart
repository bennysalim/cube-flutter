import 'package:cube/themes/light_theme.dart';
import 'package:cube/views/3.app/1.home/home_screen.dart';
import 'package:cube/views/3.app/2.search/search_screen.dart';
import 'package:cube/views/3.app/3.add/add_post_screen.dart';
import 'package:cube/views/3.app/4.chat/chat_list_screen.dart';
import 'package:cube/views/3.app/user_screen/profile/my_profile_screen.dart';
import 'package:cube/views/3.app/user_screen/profile/user_profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavWIdget extends StatefulWidget {
  const BottomNavWIdget({super.key});

  @override
  State<BottomNavWIdget> createState() => _BottomNavWIdgetState();
}

class _BottomNavWIdgetState extends State<BottomNavWIdget> {
  int _selectedIndex = 0;
  List<Widget> widgetItems = const [
    HomeScreen(),
    SearchScreen(),
    AddPostScreen(),
    ChatListScreen(),
    MyProfileScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add Post"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_rounded), label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: LightTheme.colorSecondaryLowOpacity,
          selectedItemColor: LightTheme.colorSecondary,
          // selectedItemColor: LightTheme.colorSecondary,
          onTap: _onItemTapped),
      body: widgetItems.elementAt(_selectedIndex),
    );
  }
}
