import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:you_tube/screens/nav_screen.dart';

void main(){
  runApp(const ProviderScope(child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube  Flutter UI',
      color: Colors.black,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(221, 15, 15, 15),
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.white,
        )
      ),
      home: const NavScreen(),
    );
  }
}