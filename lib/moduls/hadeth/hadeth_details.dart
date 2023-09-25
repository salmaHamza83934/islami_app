import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/moduls/hadeth/hadeth_model.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadeth_details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var provider = Provider.of<MyProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(provider.theme == ThemeMode.light
            ? 'assets/images/bg.png'
            : 'assets/images/dark_bg.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 100),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          height: mediaQuery.height,
          width: mediaQuery.width,
          decoration: BoxDecoration(
            color: theme.colorScheme.background,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    child: Text(
                      args.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1.2,
                color: theme.primaryColor,
                indent: 20,
                endIndent: 20,
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          '${args.content[index]}',
                          style: theme.textTheme.bodySmall,
                        ));
                  },
                  itemCount: args.content.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
