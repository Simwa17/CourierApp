import 'package:flutter/material.dart';
import 'package:simwa17_s_application1/core/app_export.dart';

class TutorialMockupScreen extends StatelessWidget {
  const TutorialMockupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 883.v,
          width: 437.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgScreen844x390,
                height: 844.v,
                width: 390.h,
                radius: BorderRadius.circular(
                  32.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: CustomImageView(
                    imagePath: ImageConstant.imgBlue,
                    height: 883.v,
                    width: 437.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
