import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guide_covid19/screen/bottom_nav_screen.dart';
import 'package:guide_covid19/screen/home_screen.dart';
import 'package:guide_covid19/screen/splashscreen.dart';
import 'package:guide_covid19/service/ApiService.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CoronaProvider(),
        )
      ],
      child: MaterialApp(
      title: 'Guide COVID-19',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: Color.fromRGBO(246, 248, 251, 1), elevation: 0),
        primarySwatch: Colors.green,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(246, 248, 251, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData
            .light()
            .textTheme
            .copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold)),
      ),
      home: SplashScreen(),
      routes: {
        BottomNavScreen.routeName: (context) => BottomNavScreen(),
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    ),
    );
  }
}
