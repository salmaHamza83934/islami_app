import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
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
              provider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.light,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: provider.theme == ThemeMode.light
                        ? theme.colorScheme.primary
                        : theme.colorScheme.onPrimary,
                  ),
                ),
                provider.theme == ThemeMode.light
                    ? Icon(
                        Icons.done,
                        color: theme.primaryColor,
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.dark,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.theme == ThemeMode.dark
                            ? theme.colorScheme.secondary
                            : theme.colorScheme.onPrimary,
                      ),
                ),
                provider.theme == ThemeMode.dark
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
