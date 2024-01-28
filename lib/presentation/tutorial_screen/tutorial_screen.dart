import 'package:flutter/material.dart';
import 'package:simwa17_s_application1/core/app_export.dart';
import 'package:simwa17_s_application1/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20.h, 24.v, 20.h, 20.v),
                decoration: AppDecoration.outlineOnPrimaryContainer,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 110.v),
                    CustomImageView(
                      imagePath: ImageConstant.img77093963724830,
                      height: 297.v,
                      width: 351.h,
                    ),
                    SizedBox(height: 34.v),
                    SizedBox(
                      height: 8.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 3,
                        effect: ScrollingDotsEffect(
                          spacing: 3,
                          activeDotColor: appTheme.teal400,
                          dotColor: appTheme.teal400.withOpacity(0.53),
                          activeDotScale: 1.3333333333333333,
                          dotHeight: 6.v,
                          dotWidth: 6.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 46.v),
              Container(
                width: 312.h,
                margin: EdgeInsets.only(
                  left: 41.h,
                  right: 39.h,
                ),
                child: Text(
                  "Monitor your package's journey at every stage.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 19.v),
              Opacity(
                opacity: 0.4,
                child: SizedBox(
                  width: 264.h,
                  child: Text(
                    "Keep track of your package's location in real-time.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildNextButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Next",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 66.v,
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientPrimaryToTealDecoration,
    );
  }
}
