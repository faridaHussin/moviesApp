import 'package:flutter/material.dart';
import 'package:project_route/model/movieResponse/Result.dart';
import 'package:project_route/moduls/browse/Browse_Screen.dart';
import 'package:project_route/moduls/home/Home_Screen.dart';
import 'package:project_route/moduls/search/Search_screen.dart';
import 'package:project_route/moduls/watchlist/Watchlist_Screen.dart';

class HomeLayout extends StatefulWidget {
  static const String rountName = 'home';

  HomeLayout({super.key});


  @override
  State<HomeLayout> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget>Screens = [
    Home_Screen(Result()),
    Search_screen(),
    Browse_Screen(),
    Watchlist_Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Home icon.png')),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/search.png')),
            label: 'SEARCH',
          ),
          BottomNavigationBarItem(icon: ImageIcon(
              AssetImage('assets/images/Icon material-movie.png')),
            label: 'BROWSE',
          ),
          BottomNavigationBarItem(icon: ImageIcon(
              AssetImage('assets/images/Icon ionic-md-bookmarks.png')),
            label: 'WATCHLIST',
          ),
        ],
      ),

    );
  }
}
