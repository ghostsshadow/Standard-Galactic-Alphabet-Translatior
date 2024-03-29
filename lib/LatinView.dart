import 'package:flutter/material.dart';
//import 'theme.dart';
//import 'package:standart_galactic_alphabet_translator/routingContstants.dart';
import 'package:standart_galactic_alphabet_translator/translator.dart';

class LatinView extends StatelessWidget {
  final Widget title;
  const LatinView({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, GalacticViewRoute, arguments: 'passed in argument');
        },
      ), */

      body: Translator(fontFam: 'Standard Galactic Alphabet'),
    );
  }
}