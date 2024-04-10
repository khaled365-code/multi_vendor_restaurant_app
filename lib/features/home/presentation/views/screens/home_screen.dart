

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_app/core/commons/widgets/custom_container.dart';
import 'package:multi_vendor_app/core/constants/constants.dart';
import 'package:multi_vendor_app/features/home/presentation/views/widgets/category_list.dart';

import '../../../../../core/commons/widgets/custom_app_bar.dart';
import '../../../../../core/commons/widgets/heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: CustomAppBar(),
      ),
      body: SafeArea(
        child: CustomContainer(containerContent: Column(
          children: [
            CategoryList(),
            Heading(
              text: 'Nearby Restaurants',
              onTap: (){},
            ),
            Heading(
              text: 'Try Something New',
              onTap: (){},
            ),
            Heading(
              text: 'Food closer to you',
              onTap: (){},
            )
          ],
        ))
      ),

    );
  }
}
