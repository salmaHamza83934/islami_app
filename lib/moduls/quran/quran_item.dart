import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  String suraName;
  String suraNumber;
  QuranItem({required this.suraName,required this.suraNumber});
  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return Row(
      children: [
        Expanded(child: Text(suraNumber,textAlign: TextAlign.center,style: theme.textTheme.bodyMedium,)),
        Container(
          color: theme.primaryColor,
          width: 1.5,
          height: 45,
        ),
        Expanded(child: Text(suraName,textAlign: TextAlign.center,style: theme.textTheme.bodyMedium)),
      ],
    );
  }
}
