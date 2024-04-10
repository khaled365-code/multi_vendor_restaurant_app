

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/commons/widgets/custom_container.dart';
import '../../../../../core/constants/constants.dart';

class MainProfileScreen extends StatelessWidget {
  const MainProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppConstants.kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: Container(),
      ),
      body: SafeArea(
          child: CustomContainer(containerContent: Container())
      ),

    );
  }
}
