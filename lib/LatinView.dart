import 'package:flutter/material.dart';
//import 'package:standart_galactic_alphabet_translator/routingContstants.dart';
import 'package:standart_galactic_alphabet_translator/translator.dart';

class LatinView extends StatelessWidget {
  const LatinView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, GalacticViewRoute, arguments: 'passed in argument');
        },
      ), */
      body: Translator(fontFam: 'Minecraft',),
    );

  }
}
