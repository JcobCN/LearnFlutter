import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  const NewRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}

class TipRoute extends StatelessWidget {
  const TipRoute({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tips"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              ElevatedButton(
                onPressed: (() {
                  Navigator.pop(context, "return value is here....");
                }),
                child: Text("back"),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class RouterTestRoute extends StatelessWidget {
  const RouterTestRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (() async {
         var result = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return TipRoute(text: "I'm prompt world..");
            },
          ),
         );
          print("return values is: $result");
        }
      ),
      child: Text('open tips page'),
      ),
    );
  }
}
