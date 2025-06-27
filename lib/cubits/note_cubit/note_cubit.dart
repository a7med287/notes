import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/note_cubit/note_states.dart';

import '../../constants.dart';
import '../../models/note_model.dart';

class NoteCubit extends Cubit<NoteCubitState> {
  NoteCubit() : super(NoteInitial());

  List<NoteModel>? notesList;
  fetchNotes() {
       var notesBox = Hive.box<NoteModel>(kNotesBox);
       notesList = notesBox.values.toList();
       emit(NoteSuccess(notes: notesList ?? []));
  }
}
