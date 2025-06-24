import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_notes_item.dart';

class NotesViewBody extends StatelessWidget{
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 45,),
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          Expanded(child: CustomListViewBuilder())
        ],
      ),
    );
  }

}

class CustomListViewBuilder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: CustomNoteItem(),
      );
    },);
  }
}

