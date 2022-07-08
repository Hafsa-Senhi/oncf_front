import 'package:flutter/material.dart';
import 'package:oncf_demo/pages/search_page/search_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: ResponsiveSizer(builder: (context, orientation, screenType) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Oncf Demo',
          home: SearchPage(),
        );
      }),
    );
  }
}
