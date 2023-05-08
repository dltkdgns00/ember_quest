import 'package:ember_quest/home.dart';
import 'package:ember_quest/my_comthing.dart';
import 'package:ember_quest/newsfeed.dart';
import 'package:ember_quest/playgame.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  final List _pages = [
    const Home(),
    const NewsFeed(),
    const PlayGame(),
    const MyComthing()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _pages[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: const Color(0xffaaaaaa),
            selectedItemColor: const Color(0xff8981f5),
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped,
            currentIndex: _selectedIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.article_outlined),
                label: '뉴스피드',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline),
                label: '게임',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '나의 컴띵',
              ),
            ]));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
