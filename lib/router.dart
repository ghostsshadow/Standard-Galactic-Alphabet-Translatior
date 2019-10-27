import 'package:flutter/material.dart';
import 'package:standart_galactic_alphabet_translator/undefinedView.dart';
import 'routingContstants.dart';
import 'package:standart_galactic_alphabet_translator/GalacticView.dart';
import 'package:standart_galactic_alphabet_translator/LatinView.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LatinViewRoute:
      return MaterialPageRoute(builder: (context) => LatinView());
    case GalacticViewRoute:
    var argument = settings.arguments;
      return MaterialPageRoute(builder: (context) => GalacticView(argument: argument));
    default:
      return MaterialPageRoute(builder: (context) => UndefinedView(name: settings.name));
  }
}
