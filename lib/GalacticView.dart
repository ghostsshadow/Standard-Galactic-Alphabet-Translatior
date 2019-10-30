import 'package:flutter/material.dart';
//import 'theme.dart';
//import 'package:standart_galactic_alphabet_translator/routingContstants.dart';
import 'package:standart_galactic_alphabet_translator/translator.dart';

class GalacticView extends StatelessWidget {
  final String argument;
  final Widget title;
  const GalacticView({Key key, this.argument, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, LatinViewRoute, arguments: 'passed in argument');
        },
      ), */
      body: Translator(fontFam: 'Latin',),
    );
  }
}