import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:greenit_app/main_app.dart';
import 'package:greenit_app/models/current.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Current.setup();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MainApp());
}
