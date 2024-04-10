

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_app/core/commons/styles/app_styles.dart';
import 'package:multi_vendor_app/core/commons/widgets/resuable_text.dart';
import 'package:multi_vendor_app/core/constants/constants.dart';

import '../../../../../core/constants/uidata.dart';
import '../../../../../core/routes/app_routes.dart';

class CategoryList extends StatefulWidget {
   CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 80.h,
      padding: EdgeInsetsDirectional.only(start: 12.w,top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(categories.length, (index) =>
            GestureDetector(
              onTap: ()
              {
                setState(() {
                  currentIndex=index;
                });
                Navigator.pushNamed(context, AppRoutes.allcategoriesScreen);
              },
              child: Container(
                margin: EdgeInsetsDirectional.only(end: 5.w),
                padding: EdgeInsetsDirectional.only(top: 4.h),
                width: AppConstants.width * .19,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: index==currentIndex? AppConstants.kPrimary:AppConstants.kOffWhite,
                      width: 1.w,
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(
                        height: 35.h,
                        child: Image.network(categories[index]['imageUrl'],fit: BoxFit.contain,)),
                    ResuableText(text: categories[index]['title'], textStyle: appStyles(
                        size: 12, color: AppConstants.kDark, fw: FontWeight.normal))
                  ],
                ),
              ),
            ))
      ),

    );
  }
}


