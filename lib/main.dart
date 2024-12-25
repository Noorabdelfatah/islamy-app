import 'package:flutter/material.dart';
import 'package:islamy_training/provider/settings_provider.dart';
import 'package:provider/provider.dart';

import 'my_app/my_app.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => SettingsProvider()
      ..getTheme()
      ..getLocale(),
    child: const MyApp(),
  ));
}
