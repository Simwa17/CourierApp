import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMedium66000000 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0X66000000),
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.42),
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.49),
      );
  static get bodySmallBlack90012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.42),
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.56),
      );
  static get bodySmallTeal400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal400,
      );
  // Label text style
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get labelLargeTeal400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal400,
        fontSize: 13.fSize,
      );
  static get labelLargeTeal400_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal400,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.49),
        fontSize: 11.fSize,
      );
  static get labelMediumTeal400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.teal400,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallff2390a8 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF2390A8),
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
