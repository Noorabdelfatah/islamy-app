import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_training/presentation/screens/home/settings/widgets/language_bottom_sheet.dart';
import 'package:islamy_training/presentation/screens/home/settings/widgets/theme_bottom_sheet.dart';
import 'package:islamy_training/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider myProvider = Provider.of(context);
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(
            flex: 2,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          InkWell(
            onTap: () => showThemeBottomSheet(context),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).dividerColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                myProvider.currentTheme == ThemeMode.light
                    ? AppLocalizations.of(context)!.light
                    : AppLocalizations.of(context)!.dark,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          InkWell(
            onTap: () => showLanguageBottomSheet(context),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).dividerColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                myProvider.currentLocale == const Locale('en')
                    ? 'English'
                    : 'العربية',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
          const Spacer(flex: 10),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => const ThemeBottomSheet());
  }
}

void showLanguageBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context, builder: (context) => const LanguageBottomSheet());
}
