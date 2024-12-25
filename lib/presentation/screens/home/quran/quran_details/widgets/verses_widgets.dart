import 'package:flutter/material.dart';

class VersesWidgets extends StatelessWidget {
  final String ayat;

  VersesWidgets({super.key, required this.ayat});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
          ayat,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
