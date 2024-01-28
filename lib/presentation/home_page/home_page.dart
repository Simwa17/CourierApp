import 'package:flutter/material.dart';
import 'package:simwa17_s_application1/core/app_export.dart';
import 'package:simwa17_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:simwa17_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:simwa17_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:simwa17_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:simwa17_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:simwa17_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:simwa17_s_application1/widgets/custom_icon_button.dart';
import 'package:simwa17_s_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              _buildStackSection(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    SizedBox(height: 25.v),
                    _buildRowSection1(
                      context,
                      shipmentText: "Current Shipment",
                      viewAllText: "View All",
                    ),
                    SizedBox(height: 14.v),
                    _buildFi(context),
                    SizedBox(height: 21.v),
                    _buildRowSection1(
                      context,
                      shipmentText: "Recent Shipment",
                      viewAllText: "View All",
                    ),
                    SizedBox(height: 14.v),
                    _buildFi1(context),
                    SizedBox(height: 10.v),
                    _buildFi2(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackSection(BuildContext context) {
    return SizedBox(
      height: 301.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.only(
                top: 26.v,
                bottom: 22.v,
              ),
              decoration: AppDecoration.outlineOnPrimaryContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(
                    leadingWidth: 64.h,
                    leading: Container(
                      margin: EdgeInsets.only(left: 24.h),
                      padding: EdgeInsets.all(1.h),
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder20,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 1.v),
                          AppbarCircleimage(
                            imagePath: ImageConstant.imgEllipse8,
                            margin: EdgeInsets.only(right: 1.h),
                          ),
                        ],
                      ),
                    ),
                    centerTitle: true,
                    title: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.h),
                          child: Row(
                            children: [
                              AppbarTitle(
                                text: "Noida Sector 75",
                              ),
                              AppbarTitleImage(
                                imagePath: ImageConstant.imgVector2,
                                margin: EdgeInsets.only(
                                  left: 6.h,
                                  top: 6.v,
                                  bottom: 6.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2.v),
                        AppbarSubtitle(
                          text: "Golf city, Plot 8, Sector 75",
                        ),
                      ],
                    ),
                    actions: [
                      AppbarTrailingIconbutton(
                        imagePath: ImageConstant.imgFrameOnprimarycontainer,
                        margin: EdgeInsets.symmetric(horizontal: 26.h),
                      ),
                    ],
                  ),
                  SizedBox(height: 34.v),
                  Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "Let’s Track your package",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 34.v),
                ],
              ),
            ),
          ),
          Opacity(
            opacity: 0.05,
            child: CustomImageView(
              imagePath: ImageConstant.imgBackgroundComplete,
              height: 98.v,
              width: 81.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 46.v),
            ),
          ),
          Opacity(
            opacity: 0.05,
            child: CustomImageView(
              imagePath: ImageConstant.imgBackgroundCompleteGray800,
              height: 98.v,
              width: 194.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(
                left: 81.h,
                bottom: 46.v,
              ),
            ),
          ),
          Opacity(
            opacity: 0.05,
            child: CustomImageView(
              imagePath: ImageConstant.imgBackgroundComplete,
              height: 98.v,
              width: 117.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 46.v),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 117.v),
              child: CustomSearchView(
                width: 345.h,
                controller: searchController,
                hintText: "Enter your tracking number",
                hintStyle: CustomTextStyles.bodyMediumBlack900_1,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 24.h,
                top: 212.v,
                right: 24.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgTelevision,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "Check Rate",
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFacebook,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                          margin: EdgeInsets.only(left: 8.h),
                        ),
                        SizedBox(height: 9.v),
                        Text(
                          "Pick Up",
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFi3338557,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                          margin: EdgeInsets.only(left: 8.h),
                        ),
                        SizedBox(height: 9.v),
                        Text(
                          "Drop Off",
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFi4228724,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                        ),
                        SizedBox(height: 9.v),
                        Text(
                          "History",
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFi(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(10.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFi9820063,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 6.v,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "#HWDSF776567DS",
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 1.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "On the way",
                          style: theme.textTheme.bodySmall,
                        ),
                        Container(
                          height: 2.adaptSize,
                          width: 2.adaptSize,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            top: 6.v,
                            bottom: 5.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.gray500,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "24 June",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 11.v),
              ),
            ],
          ),
          SizedBox(height: 18.v),
          CustomImageView(
            imagePath: ImageConstant.imgFrame1000011051,
            height: 12.v,
            width: 305.h,
          ),
          SizedBox(height: 10.v),
          _buildRowSection(
            context,
            location1: "From",
            location2: "To",
          ),
          SizedBox(height: 3.v),
          _buildRowSection(
            context,
            location1: "Delhi, India",
            location2: "California, US",
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFi1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgFi9820063,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 6.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "#HWDSF776567DS",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 1.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "On the way",
                      style: theme.textTheme.bodySmall,
                    ),
                    Container(
                      height: 2.adaptSize,
                      width: 2.adaptSize,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.gray500,
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "24 June",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFi2(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgFi9820063,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 6.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "#7XZ6V87Z6XCSA7",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 1.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "Delivered",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Container(
                      height: 2.adaptSize,
                      width: 2.adaptSize,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.gray500,
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "24 May",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowSection(
    BuildContext context, {
    required String location1,
    required String location2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          location1,
          style: theme.textTheme.labelMedium!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        Text(
          location2,
          style: theme.textTheme.labelMedium!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildRowSection1(
    BuildContext context, {
    required String shipmentText,
    required String viewAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          shipmentText,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            viewAllText,
            style: CustomTextStyles.labelLargeTeal400_1.copyWith(
              color: appTheme.teal400,
            ),
          ),
        ),
      ],
    );
  }
}
