import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: () {
              provider.changeLanguage('en');
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.english,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: provider.local == 'en'
                        ? theme.colorScheme.secondary
                        : theme.colorScheme.onPrimary,
                  ),
                ),
                provider.local == 'en'
                    ? Icon(
                        Icons.done,
                        color: theme.colorScheme.secondary,
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              provider.changeLanguage('ar');
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.arabic,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.local == 'ar'
                            ? theme.colorScheme.secondary
                            : theme.colorScheme.onPrimary,
                      ),
                ),
                provider.local == 'ar'
                    ? Icon(
                        Icons.done,
                        color: theme.colorScheme.secondary,
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
