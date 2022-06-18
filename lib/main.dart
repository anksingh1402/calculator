import '/widgets/CalcButton.dart';

import 'package:flutter/material.dart';

import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatefulWidget {
  final int textsize = 24;
  const CalcApp({Key? key}) : super(key: key);
  @override
  CalcAppState createState() => CalcAppState();
}

class CalcAppState extends State<CalcApp> {
  // This widget is the root of your application.
  String history = '';
  String ex = '';

  void numbclick(String text) {
    setState(() {
      ex += text;
    });
  }

  void allclear(String text) {
    setState(() {
      history = '';
      ex = '';
    });
  }

  void clear(String text) {
    setState(() {
      ex = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(ex);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      history = ex;
      ex = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CALCULATOR',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange[800],
            title: Text(
              'CALCULATOR',
              style: TextStyle(fontSize: 25),
            ),
            centerTitle: true,
            shadowColor: Colors.orange[800],
          ),
          // drawer: Drawer(
          //child: Container(
          //padding: EdgeInsets.only(left: 15),
          // color: Colors.orange[800],
          //),

          backgroundColor: Colors.orange[600],
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                // padding: EdgeInsets.only(right: 12),
                alignment: Alignment(1, 1),
                child: Text(
                  history,
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  color: Colors.orange[600],
                  shadowColor: Colors.black54,
                  child: Text(
                    ex,
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: 'AC',
                      callback: allclear,
                      fillcolor: 0xffff5722,
                      textcolor: 0xffffffff,
                    ),
                    CalcButton(
                      text: 'c',
                      callback: clear,
                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    ),
                    CalcButton(
                      text: '%',
                      callback: numbclick,
                      fillcolor: 0xffffff,
                      textcolor: 0xff000000,
                    ),
                    CalcButton(
                      text: '/',
                      callback: numbclick,
                      //  textcolor: 0xff000000,
                      fillcolor: 0xffffff, //
                      //
                      textcolor: 0xffff5722,
                    )
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: '7',
                      callback: numbclick,
                      //
                      //textcolor: 0xff000000,
                      //
                      //fillcolor: 0xffffffff,//
                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    ),
                    CalcButton(
                      text: '8',
                      callback: numbclick,
                      //
                      //fillcolor: 0xffffffff,
                      //
                      // textcolor: 0xff000000,//
                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    ),
                    CalcButton(
                      text: '9',
                      callback: numbclick,
                      //
                      //textcolor: 0xff000000,
                      //
                      // fillcolor: 0xffffffff,//
                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    ),
                    CalcButton(
                      text: '*',
                      callback: numbclick,
                      //
                      //textcolor: 0xff000000,
                      //
                      // fillcolor: 0xffffffff,//
                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    )
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: '4',
                      callback: numbclick,
                      //
                      // fillcolor: 0xffffffff,
                      //
                      // textcolor: 0xff000000,//
                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    ),
                    CalcButton(
                      text: '5',
                      callback: numbclick,
                      //
                      //fillcolor: 0xffffffff,
                      //
                      // textcolor: 0xff000000,//
                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    ),
                    CalcButton(
                      text: '6',
                      callback: numbclick,
                      //
                      // textcolor: 0xff000000,
                      //
                      // fillcolor: 0xffffffff,//
                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    ),
                    CalcButton(
                      text: '-',
                      callback: numbclick,
                      //
                      // textcolor: 0xff000000,
                      ////
                      // fillcolor: 0xffffffff,//
                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    )
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: '1',
                      callback: numbclick,
                      //
                      // textcolor: 0xff000000,
                      //
                      // fillcolor: 0xffffffff,//
                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    ),
                    CalcButton(
                      text: '2',
                      callback: numbclick,
                      // textcolor: 0xff000000,
                      // fillcolor: 0xffffffff,
                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    ),
                    CalcButton(
                      text: '3',
                      callback: numbclick,
                      // textcolor: 0xff000000,
                      // fillcolor: 0xffffffff,
                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    ),
                    CalcButton(
                      text: '+',
                      callback: numbclick,
                      //  textcolor: 0xff000000,
                      // fillcolor: 0xffffffff,

                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    )
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalcButton(
                      text: '00',
                      callback: numbclick,
                      // fillcolor: 0xffffffff,
                      // textcolor: 0xff000000
                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    ),
                    CalcButton(
                      text: '0',
                      callback: numbclick,
                      // textcolor: 0xff000000,
                      // fillcolor: 0xffffffff,
                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    ),
                    CalcButton(
                      text: '.',
                      callback: numbclick,
                      // textcolor: 0xff000000,
                      // fillcolor: 0xffffffff,
                      fillcolor: 0xffffff,
                      textcolor: 0xffff5722,
                    ),
                    CalcButton(
                      text: '=',
                      callback: evaluate,
                      // textcolor: 0xff000000,
                      // fillcolor: 0xffffffff,
                      fillcolor: 0xffff5722,
                      textcolor: 0xffffffff,
                    )
                  ])
            ],
          ),
        ));
  }
}
