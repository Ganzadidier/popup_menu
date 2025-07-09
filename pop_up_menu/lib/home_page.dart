import 'package:flutter/material.dart';
import 'components/default_menu.dart';
import 'components/rounded_menu.dart';
import 'components/text_button_menu.dart';
import 'components/icon_text_menu.dart';
import 'components/fab_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopupMenuButton Showcase'),
        actions: const [DefaultMenu()], // Style 1 in app bar
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Card(child: RoundedMenu()),     // Style 2
            SizedBox(height: 20),
            Card(child: TextButtonMenu()),  // Style 3
            SizedBox(height: 20),
            Card(child: IconTextMenu()),   // Style 4
          ],
        ),
      ),
      floatingActionButton: const FabMenu(), // Style 5
    );
  }
}