import 'package:flutter/material.dart';
import 'package:oncf_demo/pages/search_page/widgets/custom_search_button.dart';
import 'package:oncf_demo/pages/search_page/widgets/custom_search_textfield.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchByTrainNumberField extends StatelessWidget {
  const SearchByTrainNumberField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSearchTextfield(),
        SizedBox(height: 13.0.sp),
        const CustomSearchButton(label: 'Search By Train Number')
      ],
    );
  }
}
