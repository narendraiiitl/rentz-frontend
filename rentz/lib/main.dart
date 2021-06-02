import 'package:flutter/material.dart';
import 'package:rentz/screens/booking_screen.dart';
import 'package:rentz/screens/login_screen.dart';
import 'package:rentz/screens/home_screen.dart';
import 'package:rentz/screens/map_screen.dart';
import 'package:rentz/screens/notification.dart';
import 'package:rentz/screens/refer_earn.dart';
import 'package:rentz/widgets/product_detail.dart';
import './screens/product_details_screen.dart';
import 'package:flutter/services.dart';

import 'screens/signup_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.amber, // navigation bar color
    statusBarColor: Color(0xff50C2C9), // status bar color
    statusBarIconBrightness: Brightness.light, // status bar icon color
    systemNavigationBarIconBrightness:
        Brightness.dark, // color of navigation controls
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MapScreen(),
      theme: ThemeData(
        primaryColor: Color(0xff50C2C9),
        accentColor: Color(0xffEEEEEE),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        // '/': (ctx) => Home(),
        // '/profile': (ctx) => Profile(),
        '/login': (ctx) => LoginScreen(),
        '/signup': (ctx) => SignupScreen(),
        // '/favorite': (ctx) => Favo(),
        '/refer': (ctx) => ReferEarn(),
        '/noti': (ctx) => Noti(),
        '/bookings': (ctx) => Booking(),
        // '/products': (ctx) => ProductDetailsScreen(),
        '/products/flat': (ctx) => ProductDetailsScreen(),
        '/products/mapview': (ctx) => MapScreen(),
        // '/product/:id': (ctx) => Home(),
        // '/add': (ctx) => Home(),
        // '/add/:id': (ctx) => Home(),
        // '/yourservices': (ctx) => Home(),
      },
    );
  }
}
