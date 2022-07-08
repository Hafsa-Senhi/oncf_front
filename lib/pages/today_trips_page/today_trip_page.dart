import 'package:flutter/material.dart';
import 'package:oncf_demo/common/widgets/custom_floating_action_botton.dart';
import 'package:oncf_demo/common/widgets/date_displayer.dart';
import 'package:oncf_demo/pages/today_trips_page/widgets/todays_trips_list.dart';
import 'package:oncf_demo/pages/today_trips_page/widgets/trip_path_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TodayTripPage extends StatefulWidget {
  const TodayTripPage({Key? key}) : super(key: key);

  @override
  State<TodayTripPage> createState() => _TodayTripPageState();
}

class _TodayTripPageState extends State<TodayTripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.red,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 0.0.h, horizontal: 5.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              DateDisplayer(),
              TripPathIndicator(),
              TodaysTripsList(),
            ],
          ),
        ),
      ),
      floatingActionButton: const CustomFloatingActionBotton(),
    );
  }
}
