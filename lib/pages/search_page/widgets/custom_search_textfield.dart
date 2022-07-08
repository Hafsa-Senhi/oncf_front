import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomSearchTextfield extends StatelessWidget {
  const CustomSearchTextfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorWidth: 0.0,
      style: TextStyle(fontSize: 16.0.sp),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 16.5.sp,
          horizontal: 14.0.sp,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.5),
            width: 1.0,
          ),
        ),
        hintText: 'Train Number',
        hintStyle: TextStyle(fontSize: 16.0.sp),
      ),
    );
  }
}
