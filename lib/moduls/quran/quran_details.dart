import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/moduls/quran/sura_model.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = 'quran_details';

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    if (verses.isEmpty) {
      loadFiles(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/bg.png'),
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
            color: Colors.white.withOpacity(0.7),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    args.name,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.play_circle),
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
                        child: Text('${verses[index]}(${index + 1})',style: theme.textTheme.bodySmall,));
                  },
                  itemCount: verses.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  loadFiles(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = sura.trim().split('\n');
    verses = lines;
    setState(() {});
  }
}
