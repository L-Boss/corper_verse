import 'package:corper_verse/core/constants/assets_paths.dart';
import 'package:corper_verse/presentation/screens/onboarding/onboarding_one.dart';
import 'package:corper_verse/presentation/utils/screensizes/screen_sizes.dart';
import 'package:corper_verse/presentation/utils/theme/theme.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  void _navigateToLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Get.offAll(() => OnboardingOne());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Center(
        child: SizedBox(
          width: screenSizes.getWidth(context) * 0.4,
          height: screenSizes.getHeight(context) * 0.4,
          child: Image.asset(AssetsPaths.appIcon, fit: BoxFit.contain)
              .animate()
              .scale(delay: 1000.ms, duration: 1000.ms, curve: Curves.bounceOut)
              .shimmer(
                color: AppColor.textPrimary,
                delay: 3000.ms,
                duration: 3000.ms,
              ),
        ),
      ),
    );
  }
}
