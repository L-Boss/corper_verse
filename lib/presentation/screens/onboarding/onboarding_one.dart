import 'package:corper_verse/core/responsive/layout.dart';
import 'package:corper_verse/presentation/screens/onboarding/layout/desktop.dart';
import 'package:corper_verse/presentation/screens/onboarding/layout/mobile.dart';
import 'package:corper_verse/presentation/screens/onboarding/layout/tablet.dart';
import 'package:flutter/material.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: Mobile(),
      tablet: Tablet(),
      desktop: Desktop(),
    );
  }
}
