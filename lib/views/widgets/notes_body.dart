import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';

import 'custom_app_bar.dart';
import 'custom_list_view_builder.dart';

class NotesViewBody extends StatefulWidget{
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetchNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 45,),
          CustomAppBar(title: 'Notes', icon: Icons.search,),
          SizedBox(
            height: 20,
          ),
          Expanded(child: const CustomListViewBuilder())
        ],
      ),
    );
  }
}


