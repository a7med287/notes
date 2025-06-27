

import 'package:notes_app/models/note_model.dart';

abstract class NoteCubitState{}

class NoteInitial extends NoteCubitState{}
class NoteSuccess extends NoteCubitState{
   final List<NoteModel> notes;

  NoteSuccess({required this.notes});
}
