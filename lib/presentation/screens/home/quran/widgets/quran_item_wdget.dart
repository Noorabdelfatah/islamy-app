import 'package:flutter/material.dart';
import 'package:islamy_training/core/routes_manger.dart';
import 'package:islamy_training/presentation/screens/home/quran/quran_item.dart';

class QuranItemWdget extends StatelessWidget {
  final QuranItem quranItem;

  QuranItemWdget({super.key, required this.quranItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManger.quranDetailsRoute,
          arguments: quranItem,
        );
      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                quranItem.suraName,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
            )),
            VerticalDivider(),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                quranItem.versesNum,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
