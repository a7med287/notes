

import 'package:notes_app/models/note_model.dart';

abstract class NoteCubitState{}

class NoteInitial extends NoteCubitState{}
class NoteSuccess extends NoteCubitState{

   final List<NoteModel> noteModel;
  NoteSuccess({required this.noteModel});
}

class NoteFailure extends NoteCubitState{
 final String errorMessage;

  NoteFailure({required this.errorMessage});
}

