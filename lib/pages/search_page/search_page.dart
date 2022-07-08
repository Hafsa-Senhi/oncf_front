import 'package:flutter/material.dart';
import 'package:oncf_demo/common/widgets/date_displayer.dart';
import 'package:oncf_demo/pages/search_page/widgets/custom_search_button.dart';
import 'package:oncf_demo/pages/search_page/widgets/custom_search_textfield.dart';
import 'package:oncf_demo/pages/search_page/widgets/search_by_train_number_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 5.0.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0.h),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: DateDisplayer(),
                    ),
                    SizedBox(height: 2.0.h),
                    const CustomSearchTextfield(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 13.0.sp),
                      child: Center(
                        child: CircleAvatar(
                          radius: 17.0.sp,
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.swipe_vertical_sharp,
                            color: Colors.white,
                            size: 17.0.sp,
                          ),
                        ),
                      ),
                    ),
                    const CustomSearchTextfield(),
                    SizedBox(height: 15.0.sp),
                    const CustomSearchButton(label: 'Search Trip'),
                  ],
                ),
              ),
              const SearchByTrainNumberField(),
            ],
          ),
        ),
      ),
    );
  }
}
