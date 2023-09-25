import 'package:flutter/material.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class TasbehView extends StatefulWidget {
  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  double turns = 0;
  int counter = 0;
  List<String> tasbeh = [
    'سبحان الله',
    'الحمدلله',
    'الله أكبر',
    'أستغفر الله',
    'لا إله إلا الله'
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    increaseCounter();
    return Column(
      children: [
        Container(
          height: 400,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              setState(() {
                turns += 1 / 50;
                counter++;
              });
            },
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: 15,
                  left: 175,
                  child: Image.asset(provider.theme == ThemeMode.light
                      ? 'assets/images/head_sebha_logo.png'
                      : 'assets/images/head_sebha_logo_dark.png'),
                ),
                Positioned(
                  top: 93,
                  child: AnimatedRotation(
                    turns: turns,
                    duration: Duration(milliseconds: 400),
                    child: Image.asset(provider.theme == ThemeMode.light
                        ? 'assets/images/body_sebha_logo.png'
                        : 'assets/images/body_sebha_logo_dark.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          'عدد التسبيحات',
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              width: 65,
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text('$counter')),
        ),
        Container(
          child: Text(tasbeh[0]),
        ),
      ],
    );
  }

  void increaseCounter() {
    setState(() {
      if (counter > 5) {
        counter = 0;
        tasbeh.add(tasbeh.removeAt(0));
      }
    });
  }
}
