

import 'package:flutter/material.dart';
import 'package:multi_vendor_app/core/commons/widgets/resuable_text.dart';
import 'package:multi_vendor_app/core/constants/constants.dart';

import '../../../../../core/commons/styles/app_styles.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppConstants.kOffWhite,
        title: ResuableText(
            text: "Categories",textStyle: appStyles(size: 12,color: AppConstants.kGray,fw: FontWeight.w600)),
      ),
    );
  }
}
