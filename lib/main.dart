import 'package:flutter/material.dart';
import 'home_page.dart';
import 'signup.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "university",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignupPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
