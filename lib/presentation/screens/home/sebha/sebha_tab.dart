import 'package:flutter/material.dart';
import 'package:islamy_training/core/assets_manger.dart';
import 'package:islamy_training/core/colors_manger.dart';
import 'package:islamy_training/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double angle = 0;
  int counter = 0;
  int i = 0;
  List<String> tasbih = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر',
    'لا حول ولا قوة الا بالله',
  ];

  @override
  Widget build(BuildContext context) {
    SettingsProvider myProvider = Provider.of(context);
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(alignment: Alignment.topCenter, children: [
          Padding(
            padding: EdgeInsets.fromLTRB(size.height * 0.084, 0, 0, 0),
            child: Image.asset(
              myProvider.currentTheme == ThemeMode.light
                  ? AssetsManger.sebhaHeader
                  : AssetsManger.sebhaHeaderDark,
              height: size.height * 0.13,
            ),
          ),
          Padding(
            padding: myProvider.currentTheme == ThemeMode.light
                ? EdgeInsets.fromLTRB(0, size.height * 0.05, 0, 0)
                : EdgeInsets.fromLTRB(0, size.height * 0.1, 0, 0),
            child: Transform.rotate(
              angle: angle,
              child: Image.asset(
                myProvider.currentTheme == ThemeMode.light
                    ? AssetsManger.sebhaBody
                    : AssetsManger.sebhaBodyDark,
                height: size.height * 0.33,
              ),
            ),
          ),
        ]),
        Text(
          "عدد التسبيحات",
          style: Theme.of(context).textTheme.titleMedium,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: size.height * 0.02),

        // Container(
        //   margin: EdgeInsets.symmetric(horizontal: size.width * 0.3),
        //   child: ElevatedButton(
        //     style: ButtonStyle(
        //         backgroundColor:
        //             WidgetStateProperty.all<Color>(ColorsManger.goldColor)),
        //     onPressed: () {},
        //     child: Text('data'),
        //   ),
        // ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).indicatorColor.withOpacity(0.8),
            ),
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.4),
            padding: const EdgeInsets.all(15),
            child: Text(
              counter.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            )),

        SizedBox(height: size.height * 0.02),
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.2),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(
                    Theme.of(context).dividerColor)),
            onPressed: onClicked,
            child: Text(
              tasbih[i],
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: ColorsManger.whiteColor),
            ),
          ),
        ),
      ],
    );
  }

  onClicked() {
    setState(() {
      counter++;
      angle += 0.1;
      if (counter == 33) {
        counter = 0;
        i++;
        if (i == tasbih.length) {
          i = 0;
        }
      }
    });
  }
}
