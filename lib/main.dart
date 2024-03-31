import 'package:flutter/material.dart';
import 'package:greenit_app/main_app.dart';
import 'package:greenit_app/models/current.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Current().setup();
  runApp(const MainApp());
}
