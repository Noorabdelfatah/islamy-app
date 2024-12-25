import 'package:flutter/material.dart';
import 'package:islamy_training/presentation/screens/home/hadith/hadith_details/hadith_details.dart';
import 'package:islamy_training/presentation/screens/home/home.dart';
import 'package:islamy_training/presentation/screens/home/quran/quran_details/quran_details.dart';

class RoutesManger {
  static const String splashRoute = '/splash';
  static const String homeRoute = '/home';
  static const String quranDetailsRoute = '/quranDetails';
  static const String hadithDetailsRoute = '/hadithDetails';

  static Map<String, WidgetBuilder> routes = {
    RoutesManger.homeRoute: (_) => HomeScreen(),
    RoutesManger.quranDetailsRoute: (_) => QuranDetails(),
    RoutesManger.hadithDetailsRoute: (_) => const HadithDetails(),
  };
}
