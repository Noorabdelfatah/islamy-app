import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_training/core/colors_manger.dart';
import 'package:islamy_training/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider myProvider = Provider.of(context);
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              myProvider.changeTheme(ThemeMode.light);
            },
            child: myProvider.currentTheme == ThemeMode.light
                ? bulidSelectedTheme(
                    context,
                    AppLocalizations.of(context)!.light,
                  )
                : bulidUnSelectedTheme(
                    context,
                    AppLocalizations.of(context)!.light,
                  ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              myProvider.changeTheme(ThemeMode.dark);
            },
            child: myProvider.currentTheme == ThemeMode.light
                ? bulidUnSelectedTheme(
                    context,
                    AppLocalizations.of(context)!.dark,
                  )
                : bulidSelectedTheme(
                    context,
                    AppLocalizations.of(context)!.dark,
                  ),
          ),
        ],
      ),
    );
  }

  Widget bulidSelectedTheme(context, String theme) {
    return Row(
      children: [
        Text(
          theme,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const Spacer(),
        const Icon(
          Icons.check,
        ),
      ],
    );
  }

  Widget bulidUnSelectedTheme(context, String theme) {
    return Row(
      children: [
        Text(
          theme,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: ColorsManger.whiteColor,
              ),
        ),
      ],
    );
  }
}
