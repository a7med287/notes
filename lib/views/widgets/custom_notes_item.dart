import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 24),
      decoration: BoxDecoration(
        color: Color(0xffffcc80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(left: 0, right: 16),
            title: Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                "Build your career with tharwat smay",
                style: TextStyle(
                  color: Colors.black.withValues(alpha: .5),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete_rounded, color: Colors.black, size: 30),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              "jun 24,2025",
              style: TextStyle(
                color: Colors.black.withValues(alpha: .5),
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
