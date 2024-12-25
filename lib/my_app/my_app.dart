import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_training/config/theme/my_theme.dart';
import 'package:islamy_training/core/routes_manger.dart';
import 'package:islamy_training/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider myProvider = Provider.of(context);
    return MaterialApp(
      locale: myProvider.currentLocale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      theme: MyTheme.light,
      darkTheme: MyTheme.dark,
      themeMode: myProvider.currentTheme,
      debugShowCheckedModeBanner: false,
      routes: RoutesManger.routes,
      initialRoute: RoutesManger.homeRoute,
    );
  }
}
