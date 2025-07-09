import 'package:flutter/material.dart';
import '../styles.dart';

class RoundedMenu extends StatelessWidget {
  const RoundedMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text('Rounded Style Menu', style: sectionTitleStyle),
          const SizedBox(height: 10),
          PopupMenuButton<String>(
            icon: const Icon(Icons.color_lens, color: Colors.purple),
            color: Colors.purple[50],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'Purple', child: Text('Purple Theme')),
              const PopupMenuItem(value: 'Dark', child: Text('Dark Mode')),
            ],
          ),
        ],
      ),
    );
  }
}