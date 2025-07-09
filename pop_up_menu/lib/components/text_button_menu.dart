import 'package:flutter/material.dart';
import '../styles.dart';

class TextButtonMenu extends StatelessWidget {
  const TextButtonMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text('Text Button Trigger', style: sectionTitleStyle),
          const SizedBox(height: 10),
          PopupMenuButton<String>(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text('Show Menu ▼', style: TextStyle(color: Colors.blue)),
            ),
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'Copy', child: Text('Copy Text')),
              const PopupMenuDivider(),
              const PopupMenuItem(value: 'Share', child: Text('Share Link')),
            ],
          ),
        ],
      ),
    );
  }
}