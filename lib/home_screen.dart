import 'package:flutter/material.dart';
import 'package:instagram_ui/color_constants.dart';
import 'package:instagram_ui/pageViews/feed_screen.dart';
import 'package:instagram_ui/pageViews/profile_screen.dart';
import 'package:instagram_ui/pageViews/search_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = new PageController();
  int _page = 0;

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: PageView(
        children: <Widget>[FeedScreen(), SearchScreen(), ProfileScreen()],
        controller: _pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
                size: 30.0,
                color: _page == 0 ? Colors.blue : Colors.grey,
              ),
              label: 'Feed',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30.0,
                color: _page == 1 ? Colors.blue : Colors.grey,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 30.0,
                color: _page == 2 ? Colors.blue : Colors.grey,
              ),
              label: 'Profile',
            ),
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),
    );
  }
}
