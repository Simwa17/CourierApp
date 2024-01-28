import 'package:flutter/material.dart';
import 'package:simwa17_s_application1/core/app_export.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgNavHome,
        activeIcon: ImageConstant.imgNavHome,
        title: "Home",
        type: BottomBarEnum.Home,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgNavShipment,
      activeIcon: ImageConstant.imgNavShipment,
      title: "Shipment",
      type: BottomBarEnum.Shipment,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavChat,
      activeIcon: ImageConstant.imgNavChat,
      title: "Chat",
      type: BottomBarEnum.Chat,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavSetting,
      activeIcon: ImageConstant.imgNavSetting,
      title: "Setting",
      type: BottomBarEnum.Setting,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: SizedBox(
        height: 20.v,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widget.onChanged?.call(bottomMenuList[index].type);
                  setState(() {});
                },
                child: bottomMenuList[index].isSelected
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgVector101,
                            height: 7.v,
                            width: 20.h,
                          ),
                          CustomImageView(
                            imagePath: bottomMenuList[index].activeIcon,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            color: appTheme.teal400,
                            margin: EdgeInsets.only(top: 13.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 6.v),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style:
                                  CustomTextStyles.labelMediumTeal400.copyWith(
                                color: appTheme.teal400,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: 0.4,
                            child: CustomImageView(
                              imagePath: bottomMenuList[index].icon,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              color: appTheme.black900,
                            ),
                          ),
                          Opacity(
                            opacity: 0.4,
                            child: Padding(
                              padding: EdgeInsets.only(top: 6.v),
                              child: Text(
                                bottomMenuList[index].title ?? "",
                                style: CustomTextStyles.labelMediumBlack900
                                    .copyWith(
                                  color: appTheme.black900.withOpacity(0.49),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Shipment,
  Chat,
  Setting,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
