import 'package:flutter/material.dart';
import 'package:islamy_training/core/colors_manger.dart';
import 'package:islamy_training/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider myProvider = Provider.of(context);
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              myProvider.changeLocale(const Locale('en'));
            },
            child: myProvider.currentLocale == const Locale('en')
                ? bulidSelectedLanguage(context, 'English')
                : bulidUnSelectedLanguage(context, 'English'),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              myProvider.changeLocale(const Locale('ar'));
            },
            child: myProvider.currentLocale == const Locale('ar')
                ? bulidSelectedLanguage(context, 'العربية')
                : bulidUnSelectedLanguage(context, 'العربية'),
          ),
        ],
      ),
    );
  }

  Widget bulidSelectedLanguage(context, String language) {
    return Row(
      children: [
        Text(
          language,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const Spacer(),
        const Icon(Icons.check),
      ],
    );
  }

  Widget bulidUnSelectedLanguage(context, String language) {
    return Row(
      children: [
        Text(
          language,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: ColorsManger.whiteColor,
              ),
        ),
      ],
    );
  }
}
