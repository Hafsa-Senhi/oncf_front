import 'package:flutter/material.dart';
import 'package:oncf_demo/common/widgets/date_displayer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const DateDisplayer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.map_outlined,
              size: 25.0.sp,
              color: Colors.red,
            ),
            Text(
              'Casa Voyageurs',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15.0.sp,
                color: Colors.red,
              ),
            ),
            Text(
              'Find short path to here',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 15.0.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
