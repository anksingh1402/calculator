import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int textsize;
  final Function callback;
  final int fillcolor;
  final int textcolor;
  const CalcButton({
    Key? key,
    required this.text,
    required this.fillcolor,
    this.textsize = 24,
    required this.callback,
    this.textcolor = 0xffff5722,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
          width: 65,
          height: 65,
          child: FloatingActionButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Text(text),
            onPressed: () {
              callback(text);
            },
            // ignore: unnecessary_null_comparison
            backgroundColor: fillcolor != null ? Color(fillcolor) : null,
          )),
    );
  }
}
