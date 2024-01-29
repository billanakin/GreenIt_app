import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:greenit_app/main_app.dart';
import 'package:greenit_app/models/current.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    // ignore: deprecated_member_use
    AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
  }
  await Current.setup();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MainApp());
}
