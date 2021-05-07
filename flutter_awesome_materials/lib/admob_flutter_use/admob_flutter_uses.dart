import 'package:flutter/material.dart';
import 'package:admob_flutter/admob_flutter.dart';
import 'dart:io';

import 'package:flutter_native_admob/flutter_native_admob.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';

// main{
// WidgetsFlutterBinding.ensureInitialized();
// // Initialize without device test ids.
// Admob.initialize();
// // Or add a list of test ids.
// // Admob.initialize(testDeviceIds: ['YOUR DEVICE ID']);
// }

class AdmobFlutterUse extends StatefulWidget {
  @override
  _AdmobFlutterUseState createState() => _AdmobFlutterUseState();
}

class _AdmobFlutterUseState extends State<AdmobFlutterUse> {
  static const _adUnitID = "ca-app-pub-3940256099942544/8135179316";

  final _nativeAdController = NativeAdmobController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Admob.requestTrackingAuthorization();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Banner ads'),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.lightBlueAccent,
            child: AdmobBanner(
              adUnitId: getBannerAdUnitId(),
              adSize: AdmobBannerSize.BANNER,
            ),
          ),
          Text('Native Ads'),
          Container(
            width: double.infinity,
            height: 200,
            child: NativeAdmob(
              adUnitID: _adUnitID,
              numberAds: 3,
              controller: _nativeAdController,
              type: NativeAdmobType.full,
            ),
          ),
        ],
      ),
    );
  }

  String getBannerAdUnitId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
    }
    return null;
  }
}
