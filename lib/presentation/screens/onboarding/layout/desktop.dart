import 'package:corper_verse/core/constants/assets_paths.dart';
import 'package:corper_verse/presentation/components/header/header.dart';
import 'package:corper_verse/presentation/utils/screensizes/screen_sizes.dart';
import 'package:corper_verse/presentation/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColor.backgroundColor,
      body: SizedBox(
        width: screenSizes.getWidth(context),
        height: screenSizes.getHeight(context),
        child: Stack(
          children: <Widget>[
            Center(
              child: SizedBox(
                width: screenSizes.getWidth(context) * 0.95,
                height: screenSizes.getHeight(context) * 0.8,
                child: Image.asset(AssetsPaths.splash, fit: BoxFit.cover),
              ),
            ),

            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 1,
                  colors: [
                    Colors.transparent,
                    AppColor.backgroundColor.withOpacity(0.5),
                    AppColor.backgroundColor.withOpacity(0.6),
                    AppColor.backgroundColor.withOpacity(0.7),
                    AppColor.backgroundColor.withOpacity(0.8),
                    AppColor.backgroundColor.withOpacity(0.8),
                    AppColor.backgroundColor,
                  ],
                  stops: const [0.0, 0.5, 0.6, 0.7, 0.8, 0.8, 1],
                ),
              ),
            ),

            Positioned(top: 1.h, child: const DesktopHeader()),
          ],
        ),
      ),
    );
  }
}
