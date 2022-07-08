import 'package:flutter/material.dart';
import 'package:oncf_demo/pages/transportation_page/widgets/map_placeholder.dart';
import 'package:oncf_demo/pages/transportation_page/widgets/page_header.dart';
import 'package:oncf_demo/pages/transportation_page/widgets/transporation_menu_selector/transportion_menu_selector_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TransportationPage extends StatelessWidget {
  const TransportationPage({Key? key}) : super(key: key);

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
          padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 3.0.h),
          child: Column(
            children: const [
              PageHeader(),
              MapPlaceHolder(),
              TransportationMenuSelectorList(),
            ],
          ),
        ),
      ),
    );
  }
}
