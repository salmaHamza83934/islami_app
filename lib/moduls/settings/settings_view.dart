import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Settings view',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
