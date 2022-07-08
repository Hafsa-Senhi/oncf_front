import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TripStationInfoSnippet extends StatelessWidget {
  const TripStationInfoSnippet({
    Key? key,
    required this.time,
    required this.station,
    required this.alignmentM,
    required this.alignmentC,
  }) : super(key: key);

  final String time;
  final String station;
  final MainAxisAlignment alignmentM;
  final CrossAxisAlignment alignmentC;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: alignmentM,
      crossAxisAlignment: alignmentC,
      children: [
        Row(
          mainAxisAlignment: alignmentM,
          children: [
            Icon(
              Icons.timer,
              color: Colors.red,
              size: 15.0.sp,
            ),
            SizedBox(width: 10.0.sp),
            Text(
              time,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 15.0.sp,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: alignmentM,
          children: [
            Icon(
              Icons.directions_railway_filled_outlined,
              color: Colors.red,
              size: 15.0.sp,
            ),
            SizedBox(width: 10.0.sp),
            Text(
              station,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15.0.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
