import 'package:flutter/material.dart';
import 'package:islamy_training/core/assets_manger.dart';
import 'package:islamy_training/presentation/screens/home/hadith/hadith_item.dart';
import 'package:islamy_training/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider myProvider = Provider.of(context);
    HadithItem ahadithItem =
        ModalRoute.of(context)?.settings.arguments as HadithItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          myProvider.currentTheme == ThemeMode.light
              ? AssetsManger.lightMainBg
              : AssetsManger.darkMainBg,
        ),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(ahadithItem.title),
        ),
        body: SingleChildScrollView(
          child: Card(
              child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 8,
            ),
            child: Text(
              ahadithItem.content,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
          )),
        ),
      ),
    );
  }
}
