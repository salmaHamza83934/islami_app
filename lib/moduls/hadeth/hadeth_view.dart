import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/hadeth/hadeth_details.dart';
import 'package:islami_app/moduls/hadeth/hadeth_model.dart';

class HadethView extends StatefulWidget {
  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethModel> allAhadeth = [];

  @override
  void initState() {
    loadHadeth();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      children: [
        Image.asset('assets/images/hadeth_icon.png'),
        Divider(
          thickness: 3,
          color: theme.primaryColor,
        ),
        Text(
          'الأحاديث',
          style: theme.textTheme.bodyLarge,
        ),
        Divider(
          thickness: 3,
          color: theme.primaryColor,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1.5,
              endIndent: 20,
              indent: 20,
              color: theme.primaryColor,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, HadethDetails.routeName,
                        arguments: allAhadeth[index]);
                  },
                  child: Text(
                    allAhadeth[index].title,
                    textAlign: TextAlign.center,
                  ));
            },
            itemCount: allAhadeth.length,
          ),
        ),
      ],
    );
  }

  loadHadeth() async {
    String ahadeth = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethList = ahadeth.split('#');
    for (int i = 0; i < ahadethList.length - 1; i++) {
      String singleHadeth = ahadethList[i];
      List<String> singleHadethLines = singleHadeth.trim().split('\n');
      String title = singleHadethLines[0];
      singleHadethLines.removeAt(0);
      List<String> content = singleHadethLines;
      HadethModel hadethModel = HadethModel(title, content);
      allAhadeth.add(hadethModel);
    }
    setState(() {});
  }
}
