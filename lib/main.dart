import 'package:flutter/material.dart';
import 'package:standart_galactic_alphabet_translator/GalacticView.dart';
import 'package:standart_galactic_alphabet_translator/LatinView.dart';
//import 'package:standart_galactic_alphabet_translator/routingContstants.dart';
//import 'router.dart' as router;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minecraft Translator',
      home: PageController(),
      /* onGenerateRoute: router.generateRoute,
      initialRoute: LatinViewRoute, */
    );
  }
}

class PageController extends StatefulWidget {
  PageController({Key key}) : super(key: key);

  @override
  _PageControllerState createState() => _PageControllerState();
}

class _PageControllerState extends State<PageController> {

  List<Widget> pages=[LatinView(), GalacticView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, position) => pages[position],
      ),
    );
  }
}