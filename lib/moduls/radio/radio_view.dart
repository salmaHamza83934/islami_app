import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),
        Padding(
          padding: const EdgeInsets.all(40),
          child: Text(
            'إذاعة القرآن الكريم',
            style: theme.textTheme.bodyMedium,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.skip_previous,
                  size: 50,
                  color: theme.primaryColor,
                )),
            SizedBox(
              width: 40,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow_rounded,
                  size: 50,
                  color: theme.primaryColor,
                )),
            SizedBox(
              width: 40,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.skip_next,
                  size: 50,
                  color: theme.primaryColor,
                )),
          ],
        ),
      ],
    );
  }
}