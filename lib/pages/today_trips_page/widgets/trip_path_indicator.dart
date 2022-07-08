import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TripPathIndicator extends StatelessWidget {
  const TripPathIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.5.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0.sp,
        vertical: 20.0.sp,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StationIndicator(
            stationName: 'Aeroport Med V',
            timing: DateTime.now(),
          ),
          SizedBox(
            width: 30.0.sp,
            child: const Divider(
              color: Colors.red,
              thickness: 2.0,
              height: 0.0,
            ),
          ),
          StationIndicator(
            stationName: 'Casa Voyageurs',
            timing: DateTime.now().add(const Duration(hours: 1)),
          ),
        ],
      ),
    );
  }
}

class StationIndicator extends StatelessWidget {
  const StationIndicator({
    Key? key,
    required this.stationName,
    required this.timing,
  }) : super(key: key);

  final String stationName;
  final DateTime timing;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.directions_railway_filled_outlined,
          color: Colors.red,
          size: 20.0.sp,
        ),
        SizedBox(height: 15.0.sp),
        Text(
          stationName,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 14.0.sp,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10.0.sp),
        Text(
          DateFormat('yyyy-MM-dd').format(timing),
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 12.9.sp,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
