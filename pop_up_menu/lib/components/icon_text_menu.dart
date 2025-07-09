import 'package:flutter/material.dart';
import '../styles.dart';

class IconTextMenu extends StatelessWidget {
  const IconTextMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text('Icon + Text Items', style: sectionTitleStyle),
          const SizedBox(height: 10),
          PopupMenuButton<String>(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'edit',
                child: Row(
                  children: const [
                    Icon(Icons.edit, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('Edit', style: menuTextStyle),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'delete',
                child: Row(
                  children: const [
                    Icon(Icons.delete, color: Colors.red),
                    SizedBox(width: 8),
                    Text('Delete', style: menuTextStyle),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}