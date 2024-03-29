import 'package:flutter/material.dart';
//import 'theme.dart';
import 'package:share/share.dart';

class Translator extends StatefulWidget {
  final String fontFam;
  Translator({Key key, @required this.fontFam}) : super(key: key);

  @override
  _TranslatorState createState() => _TranslatorState();
}

class _TranslatorState extends State<Translator> {
  String _translation = '';

  TextEditingController myController = new TextEditingController();

  @override
  void initState() {
    super.initState();

    myController.addListener(_translate);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  _translate() {
    setState(() {
      _translation = '${myController.text}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          Stack(
            children: <Widget>[
              TextField(
                maxLines: 3,
                style: widget.fontFam == 'Standard Galactic Alphabet'
                    ? TextStyle(
                        fontFamily: 'Minecraft',
                        fontSize: 28.0,
                        height: 1.25,
                        color: Colors.white)
                    : TextStyle(
                        fontFamily: 'Standard Galactic Alphabet',
                        color: Colors.white,
                        fontSize: 28.0,
                        height: 1.25),
                controller: myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a term to translate'),
              ),
              Container(
                child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(
                    Icons.content_paste,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Text(
                _translation,
                style: TextStyle(
                    fontFamily: widget.fontFam,
                    fontSize: 28,
                    height: 1.25,
                    color: Colors.white),
              ),
              Container(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(
                    Icons.content_copy,
                    color: Colors.white,
                  ),
                  onPressed: _translation.isEmpty
                      ? null
                      : () {
                          final RenderBox box = context.findRenderObject();
                          Share.share(_translation,
                              sharePositionOrigin:
                                  box.localToGlobal(Offset.zero) & box.size);
                        },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}