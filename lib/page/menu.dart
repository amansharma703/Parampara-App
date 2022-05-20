import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:parampara/constants.dart';
import 'package:parampara/page/gallery.dart';
import 'package:parampara/page/home_screen.dart';
import 'package:parampara/page/shedule.dart';

import 'home_page.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();

}

class _homeState extends State<home> {
//  int index = 0;
//  Widget screen=HomePage();

  int _selectedIndex = 0;
  PageController _pageController= PageController();


  @override
  void initState() {
    super.initState();
//    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: <Widget>[
            HomeScreen(),
            HomePage(),
            shedule(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: CurvedNavigationBar(
          height: 55,
          backgroundColor: Colors.transparent,
          color: Colors.indigo,
          index: _selectedIndex,

          animationDuration: Duration(milliseconds: 300),
          items: <Widget>[
            Icon(Icons.home, size: 30, color: Colors.white,),
            Icon(Icons.favorite ,size: 30,color: Colors.white,),
            Icon(Icons.schedule, size: 30, color: Colors.white,),
          ],
          onTap: (index) {
            setState(() {
              onTapScreen(index);
            });
          },
        ),
      ),
    );


  }

  void onTapScreen(int index) {

    _selectedIndex = index;
    //
    //
    //using this page controller you can make beautiful animation effects
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeOut);
  }
}
