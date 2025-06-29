import 'package:flutter/material.dart';

import '../../models/note_model.dart';
import 'colors_list.dart';
class EditNoteColorsListView extends StatefulWidget {
  const EditNoteColorsListView({super.key, required this.note});

  final NoteModel note;
  @override
  State<EditNoteColorsListView> createState() => _EditNoteColorsListView();
}

class _EditNoteColorsListView extends State<EditNoteColorsListView> {
  late int currentIndex;
  List<Color> colors = [
    Color(0xff075924),
    Color(0xff497354),
    Color(0xffA68A56),
    Color(0xffBF7B54),
    Color(0xffF2D7D0),
  ];

  @override
  void initState() {
    currentIndex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = colors[index].toARGB32();
                setState(() {});
              },
              child: CustomColorItem(
                isChecked: currentIndex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}