import 'package:flutter/material.dart';
import 'package:oncf_demo/pages/today_trips_page/widgets/trip_card/trip_card.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TodaysTripsList extends StatelessWidget {
  const TodaysTripsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0.7.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Today\'s Trips',
            style: TextStyle(
              fontSize: 16.0.sp,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 12.0.sp),
          SizedBox(
            width: 35.0.sp,
            child: const Divider(
              height: 0.0,
              thickness: 1.7,
              color: Colors.black,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return const TripInfoExtended();
            },
          ),
        ],
      ),
    );
  }
}
