import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 40),
          const CustomTextField(hintText: 'Title'),
          SizedBox(height: 16),
          const CustomTextField(hintText: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
