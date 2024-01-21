import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/gen/fonts.gen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'My Smart App',
        theme:
            ThemeData(primarySwatch: Colors.blue, fontFamily: FontFamily.inter),
        routerConfig: Modular.routerConfig,
      ),
    ); //added by extension
  }
}
