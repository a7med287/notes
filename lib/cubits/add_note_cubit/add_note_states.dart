
abstract class AddNoteStates {}

class AddNoteInitial extends AddNoteStates{}
class AddNoteLoading extends AddNoteStates{}
class AddNoteSuccess extends AddNoteStates{}
class AddNoteFailure extends AddNoteStates{
  AddNoteFailure({required this.error});
  final String error;


}
