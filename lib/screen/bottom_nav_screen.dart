import 'package:flutter/material.dart';
import 'package:guide_covid19/screen/home_screen.dart';
import 'package:guide_covid19/screen/info_screen.dart';

class BottomNavScreen extends StatefulWidget {
  static const routeName = '/ButtomNavScreen';
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  var selectedPageIndex = 0;

  var pages = [
    HomeScreen(),
    InfoScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: pages[selectedPageIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.lightGreen[800],
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Colors.white),
            ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home, color: selectedPageIndex == 0? Colors.white : Colors.white,),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.info, color: selectedPageIndex == 1? Colors.white : Colors.white,),
                title: Text('Info'),
              ),
            ],
            onTap: (int index) {
              setState(() {
                selectedPageIndex = index;
              });
            }, currentIndex: selectedPageIndex,
          ),
        ),
      ),
    );
  }
}
