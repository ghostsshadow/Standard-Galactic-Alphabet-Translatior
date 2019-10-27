import 'package:flutter/material.dart';
//import 'package:standart_galactic_alphabet_translator/routingContstants.dart';
import 'package:standart_galactic_alphabet_translator/translator.dart';

class GalacticView extends StatelessWidget {
  final String argument;
  const GalacticView({Key key, this.argument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, LatinViewRoute, arguments: 'passed in argument');
        },
      ), */
      body: Translator(fontFam: 'Latin',),
    );
  }
}
