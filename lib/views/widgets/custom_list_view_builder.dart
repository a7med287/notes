import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/cubits/note_cubit/note_states.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_notes_item.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({super.key});


  @override
  Widget build(BuildContext context) {

    return BlocBuilder<NoteCubit,NoteCubitState>(
      builder: (BuildContext context, state) {
        List<NoteModel> notsList = BlocProvider.of<NoteCubit>(context).notesList?? [];
        return ListView.builder(
          itemCount: notsList.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding:  EdgeInsets.only(bottom: 16),
              child: CustomNoteItem(note: notsList[index] ,),
            );
          },
        );
      },
    );
  }
}
