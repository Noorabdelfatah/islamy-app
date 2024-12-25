import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_training/core/assets_manger.dart';
import 'package:islamy_training/presentation/screens/home/hadith/hadith_tab.dart';
import 'package:islamy_training/presentation/screens/home/quran/quran_tab.dart';
import 'package:islamy_training/presentation/screens/home/radio/radio_tab.dart';
import 'package:islamy_training/presentation/screens/home/sebha/sebha_tab.dart';
import 'package:islamy_training/presentation/screens/home/settings/settings_tab.dart';
import 'package:islamy_training/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    const SebhaTab(),
    const RadioTab(),
    const SettingsTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    SettingsProvider myProvider = Provider.of(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                myProvider.currentTheme == ThemeMode.light
                    ? AssetsManger.lightMainBg
                    : AssetsManger.darkMainBg,
              ))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).indicatorColor,
          ),
          child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage(AssetsManger.quranIcon)),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage(AssetsManger.hadithIcon)),
                    label: AppLocalizations.of(context)!.hadith),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage(AssetsManger.sebhaIcon)),
                    label: AppLocalizations.of(context)!.sebha),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage(AssetsManger.radioIcon)),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings,
                )
              ]),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
