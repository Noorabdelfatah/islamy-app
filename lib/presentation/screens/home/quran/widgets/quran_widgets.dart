import 'package:flutter/material.dart';
import 'package:islamy_training/core/assets_manger.dart';

class QuranWidgets extends StatelessWidget {
  const QuranWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsManger.quranHeader),
        ),
      ),
    );
  }
}
