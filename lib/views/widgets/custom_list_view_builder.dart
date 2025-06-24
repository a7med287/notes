import 'package:flutter/material.dart';

import 'custom_notes_item.dart';
class CustomListViewBuilder extends StatelessWidget{
  const CustomListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(padding : EdgeInsets.zero , itemBuilder: (context, index) {

      return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: CustomNoteItem(),
      );
    },);
  }
}
