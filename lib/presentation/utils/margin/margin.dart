import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YMargin extends StatelessWidget {
  final double y;
  const YMargin({super.key, required this.y});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: y.h);
  }
}

class XMargin extends StatelessWidget {
  final double x;
  const XMargin({super.key, required this.x});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: x.w);
  }
}
