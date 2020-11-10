import 'package:flutter/material.dart';
import 'package:music_app/UI/trendingUI.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Trending',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TrendingUI());
  }
}
