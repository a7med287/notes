import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_list_view_builder.dart';

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
          Expanded(child: const CustomListViewBuilder())
        ],
      ),
    );
  }

}


