import 'package:flutter/material.dart';
import 'package:oncf_demo/pages/today_trips_page/today_trip_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 30.0.sp,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TodayTripPage(),
            ),
          );
        },
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0.0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.black),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 15.5.sp, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
