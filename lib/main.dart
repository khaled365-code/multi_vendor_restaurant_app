import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_app/core/constants/constants.dart';

import 'core/routes/app_routes.dart';
import 'features/entry_point/presentation/views/screens/entrypoint_screen.dart';

void main() {
  runApp(const Foodly());
}

class Foodly extends StatelessWidget {
  const Foodly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 825),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppConstants.kOffWhite,
            iconTheme: const IconThemeData(color: AppConstants.kDark),
              primarySwatch: Colors.grey
          ),
          initialRoute: AppRoutes.initial,
          onGenerateRoute: AppRoutes.onGenerate,
        );
      },
    );
  }
}


