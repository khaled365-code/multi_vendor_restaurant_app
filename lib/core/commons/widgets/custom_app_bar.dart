


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_app/core/commons/widgets/resuable_text.dart';
import 'package:multi_vendor_app/core/constants/constants.dart';
import 'package:multi_vendor_app/core/constants/image_constants.dart';

import '../styles/app_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 12.w,vertical: 6.h),
      height: 110.h,
      width: AppConstants.width,
      color: AppConstants.kOffWhite,
      child: Container(
        margin: EdgeInsetsDirectional.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children:
              [
                CircleAvatar(
                  radius: 22.r,
                  backgroundColor: AppConstants.kSecondary,
                  backgroundImage: AssetImage(ImageConstants.khaledImage),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 6.h,start: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      ResuableText(text: 'Deliver to', textStyle: appStyles(
                        size: 13,
                        color: AppConstants.kSecondary,
                        fw: FontWeight.w600
                      )),
                      SizedBox(
                        width: AppConstants.width * .65,
                        child: Text('16768 121st Ave N, Plymouth',
                          overflow: TextOverflow.ellipsis,
                          style: appStyles(
                            size: 11, color: AppConstants.kGrayLight, fw: FontWeight.normal),),
                      )
                    ],
                  ),

                ),
              ],
            ),
            Text(getTimeOfDay(),style: TextStyle(fontSize: 25.sp),)

          ],
        ),
      ),


    );
  }
  String getTimeOfDay()
  {
   DateTime  date=DateTime.now();
   int hour=date.hour;
   if(hour>=0 && hour<12)
     {
       return '❄️';
     }
   if(hour>=12 && hour<16)
   {
      return '🌨️';
   }
   else
     {
       return '🌙';

     }


  }
}
