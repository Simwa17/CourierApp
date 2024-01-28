import 'package:flutter/material.dart';
import 'package:simwa17_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );

  // Gradient decorations
  static BoxDecoration get gradientPrimaryToTeal => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.05, -0.77),
          end: Alignment(0.17, 0.95),
          colors: [
            theme.colorScheme.primary,
            appTheme.teal400,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray200.withOpacity(0.2),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray6000f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray200 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray200.withOpacity(0.6),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: appTheme.teal400,
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.onPrimaryContainer,
            width: 4.h,
          ),
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer1 => BoxDecoration(
        color: appTheme.teal400,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 3.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
