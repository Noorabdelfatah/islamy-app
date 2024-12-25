import 'package:flutter/material.dart';
import 'package:islamy_training/core/assets_manger.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      SizedBox(
        height: size.height * 0.06,
      ),
      Image.asset(AssetsManger.radio),
      SizedBox(
        height: size.height * 0.05,
      ),
      Text(
        AppLocalizations.of(context)!.channel,
        style: Theme.of(context).textTheme.titleMedium,
        textDirection: TextDirection.rtl,
      ),
      SizedBox(
        height: size.height * 0.02,
      ),
      Image.asset(
        AssetsManger.player,
        width: size.width * 0.47,
      ),
    ]);
  }
}
