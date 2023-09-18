import 'package:flutter/material.dart';

class TasbehView extends StatefulWidget {
  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
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
    increaseCounter();
    return Column(
      children: [
        Container(
          height: 400,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              counter++;
              setState(() {});
            },
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: 15,
                  left: 175,
                  child: Image.asset('assets/images/head_sebha_logo.png'),
                ),
                Positioned(
                  top: 93,
                  child: Image.asset('assets/images/body_sebha_logo.png'),
                )
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
                color: Color(0xFFB7935F),
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
      if (counter == 5) {
        counter = 0; // Reset counter
        tasbeh.add(
            tasbeh.removeAt(0)); // Move first element to the end of the list
      }
    });
  }
}
