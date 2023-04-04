import 'package:flutter/material.dart';
import 'package:handy_code/pages/home_screen.dart';
import 'package:handy_code/pages/splash_screen.dart';
import 'package:handy_code/Snippet_page/Customize_Snippet.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Snip_page()
        ),
      ),
      initialRoute: '/splash',
      routes: {
        '/home': (context) => HomePage(),
        '/splash': (context) => SplashScreen(),
      },
    );
  }
}
