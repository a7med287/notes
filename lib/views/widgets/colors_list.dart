import 'package:flutter/material.dart';

class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  int? currentIndex = 0;
 List<Color> colors = [
   Color(0xff075924),
   Color(0xff497354),
   Color(0xffA68A56),
   Color(0xffBF7B54),
   Color(0xffF2D7D0),
 ];
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
              onTap: (){
                currentIndex = index;
                setState(() {

                });
              },
              child: CustomColorItem(isChecked: currentIndex == index, color: colors[index],),
            ),
          );
        },
      ),
    );
  }
}

class CustomColorItem extends StatelessWidget {
  const CustomColorItem({super.key, required this.isChecked, required this.color});

  final bool isChecked;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return isChecked
        ? CircleAvatar(
          backgroundColor: Colors.white,
          radius: 36,
          child: CircleAvatar(backgroundColor: color, radius: 32),
        )
        : CircleAvatar(backgroundColor: color, radius: 32);
  }
}
