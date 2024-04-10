

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_app/core/constants/constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.containerContent});


  final Widget containerContent;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.75,
      width: AppConstants.width,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
        child: Container(
          width: AppConstants.width,
          color: AppConstants.kOffWhite,
          child: SingleChildScrollView(
            child: containerContent,
          ),

        ),
      ),

    );
  }
}
