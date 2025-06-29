import 'package:flutter/material.dart';

import '../../constants.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap,  this.isLoading = false });
  final void Function()? onTap;

  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isLoading? SizedBox(
              height: 28,
              width: 28,
              child: CircularProgressIndicator(color: Colors.black,)) : Text(
            "Add",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
