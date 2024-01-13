import 'package:fluffy_challenge_week_1/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screwdriver/flutter_screwdriver.dart';

class CustomInfoSection extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets? padding;

  const CustomInfoSection({
    super.key,
    required this.children,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: padding ?? const EdgeInsets.all(16),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(48),
              ),
              color: context.theme.brightness == Brightness.light
                  ? AppColors.lightBackgroundColor
                  : AppColors.darkBackgroundColor
              //Theme.of(context).textColor.withOpacity(0.02),
              ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ],
    );
  }
}
