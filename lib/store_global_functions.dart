import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info/package_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'store_global_variables.dart';

class AppFunc
{
  Future<void> initVariables() async {
    Globals.myAppVersion = "1.0.0";
    Globals.myDeviceId = "NoAvailable";

    try {
      Globals.myNetIP = await Ipify.ipv4();
    } catch (ex) {}
    // SharedPreferences.setMockInitialValues({});
    Globals.prefs = await SharedPreferences.getInstance();
    // try {
    //   Globals.myUserID = Globals.prefs.getString(Globals.prfUserID)!;
    // }catch(Ex){}
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      // appName = packageInfo.appName;
      // packageName = packageInfo.packageName;
      Globals.myAppVersion = packageInfo.version;
      Globals.myAppBuildNumber = packageInfo.buildNumber;
    });

    if (kIsWeb) {
      Globals.myTypeID = "WEBA";
    } else if (PlatformDetails().isDesktop) {
      Globals.myTypeID = "WDSK";
    }
  }

}

class PlatformDetails {
  static final PlatformDetails _singleton = PlatformDetails._internal();
  factory PlatformDetails() {
    return _singleton;
  }
  PlatformDetails._internal();
  bool get isDesktop =>
      defaultTargetPlatform == TargetPlatform.macOS ||
          defaultTargetPlatform == TargetPlatform.linux ||
          defaultTargetPlatform == TargetPlatform.windows;
  bool get isMobile =>
      defaultTargetPlatform == TargetPlatform.iOS ||
          defaultTargetPlatform == TargetPlatform.android;
}