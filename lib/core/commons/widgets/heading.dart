import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:multi_vendor_app/core/commons/widgets/resuable_text.dart';
import 'package:multi_vendor_app/core/constants/constants.dart';

import '../styles/app_styles.dart';

class Heading extends StatelessWidget {
  const Heading({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: ResuableText(
                text: text, textStyle: appStyles(size: 16, color: AppConstants.kDark, fw: FontWeight.bold,)),
          ),
          GestureDetector(
            onTap: onTap,
            child: Icon(
              AntDesign.appstore1,
              color: AppConstants.kSecondary,
              size: 20.sp,
            ),
          )
        ],
      ),
    );
  }
}
