import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_training/core/assets_manger.dart';
import 'package:islamy_training/presentation/screens/home/hadith/hadith_item.dart';
import 'package:islamy_training/presentation/screens/home/hadith/widgets/hadith_header_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithTab extends StatefulWidget {
  HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<HadithItem> hadiths = [];

  @override
  Widget build(BuildContext context) {
    if (hadiths.isEmpty) readHadith();
    return Column(
      children: [
        Expanded(flex: 2, child: Image.asset(AssetsManger.hadithHeader)),
        const Divider(),
        Text(
          AppLocalizations.of(context)!.ahadith,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        const Divider(),
        Expanded(
          flex: 3,
          child: ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) =>
                HadithHeaderWidget(hadith: hadiths[index]),
            itemCount: hadiths.length,
          ),
        )
      ],
    );
  }

  void readHadith() async {
    String ahadithContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadith = ahadithContent.trim().split('#');
    for (int i = 0; i < ahadith.length; i++) {
      String eachHadith = ahadith[i];
      List<String> hadithLines = eachHadith.trim().split('\n');
      String hadithTitle = hadithLines[0];
      hadithLines.removeAt(0);
      String hadithContent = hadithLines.join('\n');
      HadithItem hadith = HadithItem(
        title: hadithTitle,
        content: hadithContent,
      );
      hadiths.add(hadith);
    }
    setState(() {});
  }
}
