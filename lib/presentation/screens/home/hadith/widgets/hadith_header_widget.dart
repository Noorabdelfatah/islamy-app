import 'package:flutter/material.dart';
import 'package:islamy_training/core/routes_manger.dart';
import 'package:islamy_training/presentation/screens/home/hadith/hadith_item.dart';

class HadithHeaderWidget extends StatelessWidget {
  HadithHeaderWidget({super.key, required this.hadith});

  final HadithItem hadith;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManger.hadithDetailsRoute,
            arguments: hadith);
      },
      child: Text(
        hadith.title,
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
