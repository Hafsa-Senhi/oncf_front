import 'package:flutter/material.dart';
import 'package:oncf_demo/pages/today_trips_page/widgets/trip_card/widgets/train_station_info_snippet.dart';
import 'package:oncf_demo/pages/today_trips_page/widgets/trip_card/widgets/train_type_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TripInfoExtended extends StatelessWidget {
  const TripInfoExtended({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15.0.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                height: 0.0,
                color: Colors.black.withOpacity(0.5),
              ),
              SizedBox(height: 15.0.sp),
              Text(
                'Train N-28',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TripStationInfoSnippet(
                      alignmentM: MainAxisAlignment.start,
                      alignmentC: CrossAxisAlignment.start,
                      time: '14:00',
                      station: 'Aeroport Med V',
                    ),
                    SizedBox(height: 15.0.sp),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TrainTypeIndicator(),
                        TripStationInfoSnippet(
                          alignmentM: MainAxisAlignment.end,
                          alignmentC: CrossAxisAlignment.end,
                          time: '19:00',
                          station: 'Casa Voyageurs',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 0.0,
                color: Colors.black.withOpacity(0.5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
