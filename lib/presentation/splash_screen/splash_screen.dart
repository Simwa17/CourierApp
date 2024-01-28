import 'package:flutter/material.dart';
import 'package:simwa17_s_application1/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.05, -0.77),
              end: Alignment(0.17, 0.95),
              colors: [
                theme.colorScheme.primary,
                appTheme.teal400,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Spacer(
                  flex: 61,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 11.v),
                      child: Text(
                        "Fast Deliver",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFi3178933,
                      height: 49.adaptSize,
                      width: 49.adaptSize,
                      margin: EdgeInsets.only(left: 10.h),
                    ),
                  ],
                ),
                Spacer(
                  flex: 38,
                ),
                _buildBackgroundCompleteStack(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackgroundCompleteStack(BuildContext context) {
    return SizedBox(
      height: 175.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Opacity(
            opacity: 0.05,
            child: CustomImageView(
              imagePath: ImageConstant.imgBackgroundComplete,
              height: 174.v,
              width: 314.h,
              alignment: Alignment.centerLeft,
            ),
          ),
          Opacity(
            opacity: 0.05,
            child: CustomImageView(
              imagePath: ImageConstant.imgBackgroundComplete,
              height: 174.v,
              width: 78.h,
              alignment: Alignment.centerRight,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFi9561688,
            height: 50.adaptSize,
            width: 50.adaptSize,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 44.h),
          ),
        ],
      ),
    );
  }
}
