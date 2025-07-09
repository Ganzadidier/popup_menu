import 'package:flutter/material.dart';
import '../../styles.dart';

class DefaultMenu extends StatelessWidget {
  const DefaultMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) => ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Selected: $value'))),
      itemBuilder: (context) => [
        const PopupMenuItem(value: 'New', child: Text('New File', style: menuTextStyle)),
        const PopupMenuItem(value: 'Save', child: Text('Save', style: menuTextStyle)),
        const PopupMenuItem(value: 'Export', child: Text('Export PDF', style: menuTextStyle)),
      ],
    );
  }
}