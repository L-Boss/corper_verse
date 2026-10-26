import 'package:corper_verse/core/constants/assets_paths.dart';
import 'package:corper_verse/presentation/utils/margin/margin.dart';
import 'package:corper_verse/presentation/utils/screensizes/screen_sizes.dart';
import 'package:corper_verse/presentation/utils/style/header_style/header_style.dart';
import 'package:corper_verse/presentation/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DesktopHeader extends StatelessWidget implements PreferredSizeWidget {
  const DesktopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
      child: Card(
        elevation: 4,
        shadowColor: Colors.black.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        color: AppColor.backgroundColor,
        child: Container(
          width: screenSizes.getWidth(context) * 0.98,
          height: 84.h,

          padding: EdgeInsets.symmetric(horizontal: 16.w),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Image.asset(
                AssetsPaths.appIcon,
                fit: BoxFit.contain,
                width: 60.w,
                height: 60.h,
              ),

              XMargin(x: 10),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("CoperVerse", style: headingText),

                      XMargin(x: 8),
                      Material(
                        elevation: 3,
                        shadowColor: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8.r),
                        color: const Color.fromARGB(255, 90, 153, 81),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 4.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "EDITION",
                                style: bodyText.copyWith(
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 0.5,
                                  color: AppColor.neutralColor,
                                  height: 0.9,
                                ),
                              ),
                              Text(
                                "2026",
                                style: bodyText.copyWith(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w900,
                                  color: AppColor.neutralColor,
                                  height: 0.9,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  YMargin(y: 4),

                  Text(
                    "ORIENTATION CAMP: DAY 1",
                    style: headingText.copyWith(
                      color: AppColor.secondaryColor,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.h);
}
