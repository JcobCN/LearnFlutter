import 'package:counter/2_4.dart';
import 'package:counter/countWidget.dart';
import 'package:counter/2_3.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(const CounterWidget());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: const CounterWidget() 
      // home: const GetStateObjectRoute()
      // home: const CuperinoTestRoute()
      // home: Row(
      //   children: [
      //     TapboxA(),
      //     ParentWidget(),
      //     ParentWidgetC()
      //   ],
      // ),

      // 2_4路由测试
      // home: HomeTest()

      // 2_4路由传值
      home: RouterTestRoute()
    );
  }
}

class HomeTest extends StatelessWidget {
  const HomeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home test...")
      ),
      body: Center(
        child: Column(
          children: [
            TapboxA(),
            ParentWidget(),
            ParentWidgetC(),
            TextButton(
              child: Text("open new route"),
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) {
                    return NewRoute();    
                  }))
                ) ;   
              }),
            )
          ],
        ),
      ),
    );
  }
}

