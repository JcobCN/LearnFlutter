import 'package:counter/2_2.dart';
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
      // 2_4命名路由 '/'作为应用的home(首页)
      initialRoute: "/",
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
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          String? routeName = settings.name;  
          print("routeName:$routeName");
          return HomeTest();
        }
        );
      },
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
      // home: RouterTestRoute(),

      // 2_4命名路由
      routes: {
        "new_page":(context) => NewRoute(),
        "/":(context) => HomeTest(), //注册路由首页
        "echo":(context) => EchoRoute()
      },
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
                // 2_4 路由测试
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: ((context) {
                //     return NewRoute();    
                //   }))
                // ) ;   

                // 2_4 命名路由
                // Navigator.pushNamed(context, 'new_page');

                // 2_4 命名路由传参
                Navigator.of(context).pushNamed("echo", arguments: "hi");
              }),
            )
          ],
        ),
      ),
    );
  }
}

