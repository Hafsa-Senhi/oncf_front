import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TrainTypeIndicator extends StatelessWidget {
  const TrainTypeIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20.0.sp,
          child: Divider(
            height: 0.0,
            color: Colors.black.withOpacity(0.2),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadiusDirectional.circular(80.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.0.sp, vertical: 7.0.sp),
          child: Text(
            'TN',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0.sp,
            ),
          ),
        ),
        SizedBox(
          width: 20.0.sp,
          child: Divider(
            height: 0.0,
            color: Colors.black.withOpacity(0.2),
          ),
        ),
      ],
    );
  }
}
