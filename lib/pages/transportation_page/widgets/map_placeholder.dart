import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MapPlaceHolder extends StatelessWidget {
  const MapPlaceHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0.h),
      child: Container(
        height: 400,
        color: Colors.black.withOpacity(0.11),
        child: const Center(
          child: Text('Reserved to Map as Placeholder'),
        ),
      ),
    );
  }
}
