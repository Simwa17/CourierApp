import '../location_screen/widgets/userprofile_item_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:simwa17_s_application1/core/app_export.dart';
import 'package:simwa17_s_application1/widgets/custom_search_view.dart';

class LocationScreen extends StatelessWidget {
  LocationScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup41,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 32.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: SizedBox(
                      height: 863.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle9878,
                            height: 428.v,
                            width: 393.h,
                            alignment: Alignment.bottomCenter,
                          ),
                          _buildUserProfileSection(context),
                          _buildMapSection(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          right: 24.h,
          bottom: 117.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchView(
              controller: searchController,
              hintText: "Search location",
            ),
            SizedBox(height: 17.v),
            Text(
              "Delivery Nearby",
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 14.v),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 7.5.v),
                    child: SizedBox(
                      width: 345.h,
                      child: Divider(
                        height: 1.v,
                        thickness: 1.v,
                        color: appTheme.gray200.withOpacity(0.53),
                      ),
                    ),
                  ),
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return UserprofileItemWidget();
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMapSection(BuildContext context) {
    return SizedBox(
      height: 445.v,
      width: 345.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }
}
