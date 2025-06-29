import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
   const CustomTextField({super.key, required this.hintText, this.maxLines = 1, this.onSaved, this.onChanged});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        if(value?.isEmpty ?? true){
          return "field is requird";
        }else{
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: buildInputBorder(),
        enabledBorder: buildInputBorder(),
        focusedBorder: buildInputBorder(color: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildInputBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
