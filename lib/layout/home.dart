import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadeth/hadeth_view.dart';
import 'package:islami_app/moduls/quran/quran_view.dart';
import 'package:islami_app/moduls/radio/radio_view.dart';
import 'package:islami_app/moduls/settings/settings_view.dart';

import '../moduls/tasbeh/tasbeh_view.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  List<Widget> screens=[
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('إسلامي'),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (int index){
            setState(() {
            });
            selectedIndex=index;
          },
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),label: 'Quran'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),label: 'Hadeth'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),label: 'Tasbeh'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),label: 'Radio'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
