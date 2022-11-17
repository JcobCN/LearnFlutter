import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget{
  const CounterWidget({super.key, this.initValue = 0});

  final int initValue;

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  @override
  void initState(){
    super.initState();

    _counter = widget.initValue;
    print("initState");

  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
          child: TextButton(
        child: Text('$_counter'),
        onPressed: () => setState(() {
          _counter++;
        }),
       )
      ),
    );
  }

}