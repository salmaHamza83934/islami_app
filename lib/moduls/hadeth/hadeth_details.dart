import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadeth/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadeth_details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/bg.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text('إسلامي'),
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
                    args.title,
                    style: theme.textTheme.bodyLarge,
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
