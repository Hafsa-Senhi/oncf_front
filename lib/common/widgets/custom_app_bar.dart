import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 0.3.h),
          child: Container(
            height: 40.0.h,
            width: MediaQuery.of(context).size.width,
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    side: MaterialStateProperty.all(
                      const BorderSide(
                        width: 1.0,
                        color: Colors.white,
                      ),
                    ),
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    elevation: MaterialStateProperty.all(0.0),
                    overlayColor: MaterialStateProperty.all(
                        Colors.white.withOpacity(0.11)),
                  ),
                  onPressed: () {},
                  child: SizedBox(
                    width: double.infinity,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 16.0.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      preferredSize: preferredSize,
    );
  }
}
