import 'package:flutter/material.dart';
import 'package:simwa17_s_application1/core/app_export.dart';
import 'package:simwa17_s_application1/widgets/custom_elevated_button.dart';
import 'package:simwa17_s_application1/widgets/custom_icon_button.dart';
import 'package:simwa17_s_application1/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildBackgroundImages(context),
                    SizedBox(height: 41.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "Sign In",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Opacity(
                        opacity: 0.4,
                        child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text(
                            "Welcome Back, You’ve been missed.",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "Username",
                          style: CustomTextStyles.bodyMediumOnPrimary,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: CustomTextFormField(
                        controller: userNameController,
                        hintText: "Enter your username",
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "Password",
                          style: CustomTextStyles.bodyMediumOnPrimary,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: CustomTextFormField(
                        controller: passwordController,
                        hintText: "Enter your username",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 17.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 23.h),
                        child: Text(
                          "Forgot password?",
                          style: CustomTextStyles.labelLargeTeal400,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    CustomElevatedButton(
                      text: "Sign In",
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientPrimaryToTealDecoration,
                    ),
                    SizedBox(height: 40.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 6.v,
                            bottom: 5.v,
                          ),
                          child: SizedBox(
                            width: 61.h,
                            child: Divider(),
                          ),
                        ),
                        Opacity(
                          opacity: 0.4,
                          child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "Sign In with",
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 6.v,
                            bottom: 5.v,
                          ),
                          child: SizedBox(
                            width: 67.h,
                            child: Divider(
                              indent: 6.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 22.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          height: 48.adaptSize,
                          width: 48.adaptSize,
                          padding: EdgeInsets.all(16.h),
                          decoration: IconButtonStyleHelper.outlineGray,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrame1000011047,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: CustomIconButton(
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                            padding: EdgeInsets.all(15.h),
                            decoration: IconButtonStyleHelper.outlineGray,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFrame,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: CustomIconButton(
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                            padding: EdgeInsets.all(15.h),
                            decoration: IconButtonStyleHelper.outlineGray,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFrameBlack900,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 41.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don’t have an account? ",
                            style: CustomTextStyles.bodyMedium66000000,
                          ),
                          TextSpan(
                            text: "Sign Up",
                            style: CustomTextStyles.titleSmallff2390a8,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackgroundImages(BuildContext context) {
    return SizedBox(
      height: 164.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle34625584,
            height: 130.v,
            width: 393.h,
            alignment: Alignment.topCenter,
          ),
          Opacity(
            opacity: 0.05,
            child: CustomImageView(
              imagePath: ImageConstant.imgBackgroundComplete,
              height: 80.v,
              width: 99.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 35.v),
            ),
          ),
          Opacity(
            opacity: 0.05,
            child: CustomImageView(
              imagePath: ImageConstant.imgBackgroundCompleteGray800,
              height: 80.v,
              width: 159.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(
                left: 99.h,
                bottom: 35.v,
              ),
            ),
          ),
          Opacity(
            opacity: 0.05,
            child: CustomImageView(
              imagePath: ImageConstant.imgBackgroundComplete,
              height: 80.v,
              width: 135.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 35.v),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFi9561688,
            height: 50.adaptSize,
            width: 50.adaptSize,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 84.h,
              bottom: 33.v,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                left: 21.h,
                right: 299.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.outlineOnPrimaryContainer1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFi3178933,
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "Fast Deliver",
                    style: theme.textTheme.labelSmall,
                  ),
                  SizedBox(height: 6.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
