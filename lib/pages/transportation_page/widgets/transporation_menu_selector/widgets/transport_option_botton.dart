import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TransportOptionBotton extends StatelessWidget {
  const TransportOptionBotton({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 1.0.h),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 20.0.sp,
                ),
                SizedBox(width: 15.0.sp),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0.sp,
                        ),
                      ),
                      SizedBox(height: 5.0.sp),
                      Text(
                        'Click here to find nearest station',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.navigate_next_outlined,
                  color: Colors.red,
                  size: 22.0.sp,
                )
              ],
            ),
            SizedBox(height: 15.0.sp),
            Divider(
              height: 0.0,
              color: Colors.black.withOpacity(0.4),
            )
          ],
        ));
  }
}
