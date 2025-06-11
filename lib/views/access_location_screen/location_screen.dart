import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/reusable_widgets/small_widgets_before_home_screen/rectangle_button.dart';
import 'package:food_delivery_app/utils/constants.dart';
import 'package:food_delivery_app/utils/screen_colors.dart';
import 'package:food_delivery_app/views/authentication/home_screen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart' as PermissionStatus;
import 'package:get_storage/get_storage.dart';

final storageServices = GetStorage();

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final storageServices = GetStorage();

  late String latitude;
  late String longitude;

  bool isFetchingLocation = false;

  Future<void> handleLocationPermission(BuildContext context) async {
    PermissionStatus.PermissionStatus status = await PermissionStatus.Permission.location.status;

    if (status.isGranted) {
      log("Permission : GRANTED");

      setState(() {
        isFetchingLocation = true;
      });

      Position position = await Geolocator.getCurrentPosition();

      double latitude = position.latitude;
      double longitude = position.longitude;

      if(latitude != 0.0 && longitude != 0.0){
        storageServices.write(Constants.latitude, latitude);
        storageServices.write(Constants.longitude, longitude);
        setState(() {
          isFetchingLocation = false;
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }else{
        setState(() {
          isFetchingLocation = false;
        });
      }
    } else if (status.isDenied) {
      //Denied once or twice, ask again
      log("Permission : DENIED");
      PermissionStatus.PermissionStatus newStatus = await PermissionStatus.Permission.location.request();

      if (newStatus.isGranted) {

        //Permission granted after request
        Position position = await Geolocator.getCurrentPosition();

      } else if (newStatus.isPermanentlyDenied) {
        // Denied twice (Don't ask again)
        _showSettingsDialog(context);
      } else {
        //Denied again without "Don't ask again"
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Location permission is required.")),
        );
      }
    } else if (status.isPermanentlyDenied) {
      log("Permission : PERMANENT DENIED");
      // Already permanently denied
      _showSettingsDialog(context);
    }
  }

  void _showSettingsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: Text("Permission Required"),
            content: Text(
              "Location permission is permanently denied. Please enable it from app settings.",
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Cancel"),
              ),
              TextButton(
                onPressed: () async {
                  Navigator.pop(context);
                  await PermissionStatus.openAppSettings();
                },
                child: Text("Open Settings"),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // location image...
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _locationImageDesign(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: RectangleButton(
                    color: SColors.nextButtonOrange,
                    name: "ACCESS LOCATION",
                    textColor: SColors.appPrimaryWhite,
                    height: MediaQuery.of(context).size.height * 0.07,
                     width: MediaQuery.of(context).size.width * 0.90,
                    onPressed: () {
                      handleLocationPermission(context);
                    },
                    icon: Icons.location_on,
                    isLoading: isFetchingLocation,
                  ),
                ),
                // text of location..
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Center(
                  child: Text(
                    'ACCESS YOUR LOCATION ONLY WHILE USING THE APP',
                    maxLines: 2,
                    style: TextStyle(
                      fontFamily: 'FontSen',
                      fontWeight: FontWeight.w400,
                      color: SColors.textGrey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // custom class of return type widget...
  Widget _locationImageDesign() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.36,
      child: Card(
        color: SColors.brownBackgroundColor,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
        child: Image.asset(
          'assets/images/location_image.png',
          height: MediaQuery.of(context).size.height * 0.35,
          width: MediaQuery.of(context).size.width * 0.25,
        ),
      ),
    );
  }
}
