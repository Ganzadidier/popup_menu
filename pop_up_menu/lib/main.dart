import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(const PopupMenuShowcaseApp());

class PopupMenuShowcaseApp extends StatelessWidget {
  const PopupMenuShowcaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PopupMenuButton Showcase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}