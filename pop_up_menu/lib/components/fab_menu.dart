import 'package:flutter/material.dart';
import '../styles.dart';

class FabMenu extends StatelessWidget {
  const FabMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        showMenu(
          context: context,
          position: const RelativeRect.fromLTRB(100, 100, 0, 0),
          items: [
            const PopupMenuItem(
              value: 'Photo',
              child: Row(
                children: [
                  Icon(Icons.photo),
                  SizedBox(width: 8),
                  Text('Add Photo'),
                ],
              ),
            ),
            const PopupMenuItem(
              value: 'Video',
              child: Row(
                children: [
                  Icon(Icons.video_call),
                  SizedBox(width: 8),
                  Text('Add Video'),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}