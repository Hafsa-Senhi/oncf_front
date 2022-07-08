import 'package:flutter/material.dart';
import 'package:oncf_demo/pages/transportation_page/transportation_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomFloatingActionBotton extends StatelessWidget {
  const CustomFloatingActionBotton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0.sp,
      width: 30.0.sp,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TransportationPage(),
              ),
            );
          },
          backgroundColor: Colors.black,
          child: Icon(
            Icons.emoji_transportation,
            color: Colors.white,
            size: 22.0.sp,
          ),
        ),
      ),
    );
  }
}
