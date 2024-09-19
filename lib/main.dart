import 'package:flutter/material.dart';

import 'view/allpagrroute/all_page_route.dart';
import 'view/homePage/home-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AllPageRoute(),
    );
  }
}

