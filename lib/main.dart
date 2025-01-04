import 'package:flutter/material.dart';
import 'package:travel_app_ui/screens/bottom_bar.dart';
import 'package:travel_app_ui/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ticket Booking',
      theme: ThemeData(
        primaryColor: primary
      ),
      home: MyBottomBar(),
    );
  }
}