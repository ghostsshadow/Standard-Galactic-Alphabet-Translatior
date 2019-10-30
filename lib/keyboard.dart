import 'package:flutter/material.dart';

class Keyboard extends StatefulWidget {
  @override
  _KeyboardState createState() => _KeyboardState();
}






class _KeyboardState extends State<Keyboard> { 

  String output = "0";
 
  Widget buildButton(String buttonText){
  return new Expanded(
       child: new OutlineButton(
         padding: new EdgeInsets.all(20),
          child: new Text(buttonText, style: TextStyle(
            fontFamily: "Standard Galactic Alphabet",
            fontSize: 28
          ),),
            onPressed: () => {},
            ),
        );
}
  @override
  Widget build(BuildContext context) {
    return Container(child: new Column(
            children: <Widget>[
            Container(
              child: new Text(output, style: new TextStyle(
                fontFamily: "Minecraft",
                fontSize: 28.0,
              
              ),)),
            new Expanded(
              child: new Divider()
            ),
            Column(children: [
                new Row(children: [
                  buildButton("a"),
                  buildButton("b"),
                  buildButton("c"),
                  buildButton("d"),
                  buildButton("e"),
                  buildButton("f"),
                  buildButton("g"),
                ],),

                 new Row(children: [
                  buildButton("h"),
                  buildButton("i"),
                  buildButton("j"),
                  buildButton("k"),
                  buildButton("l"),
                  buildButton("m"),
                  buildButton("n"),
                ],),

                new Row(children: [
                  buildButton("o"),
                  buildButton("p"),
                  buildButton("q"),
                  buildButton("r"),
                  buildButton("s"),
                  buildButton("t"),
                  buildButton("u"),
                ],),

                new Row(children: [
                  buildButton("v"),
                  buildButton("w"),
                  buildButton("x"),
                  buildButton("y"),
                  buildButton("z"),
                  buildButton("."),
                  buildButton(","),
                ],),

                
              ],
            )
             ],
           )
         ,);
  }
}