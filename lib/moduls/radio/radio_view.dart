import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:islami_app/moduls/radio/radio_item.dart';
import 'package:islami_app/moduls/radio/radio_response.dart';

class RadioView extends StatefulWidget {
  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getRadios(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var results = snapshot.data?.radios ?? [];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Image.asset('assets/images/radio_image.png')),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: PageScrollPhysics(),
                    itemBuilder: (_, index) =>
                        RadioItem(results[index], player),
                    itemCount: results.length,
                  ),
                )
              ],
            );
          } else if (snapshot.hasError) {
            print(snapshot.error);
            return Center(child: Text('Something went wronng'));
          } else {
            return Center(
                child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ));
          }
        });
  }

  Future<RadioResponse> getRadios() async {
    Uri url = Uri.https('mp3quran.net', '/api/v3/radios');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return RadioResponse.fromJson(json);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
