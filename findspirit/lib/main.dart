import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 160,
            child: DrawerHeader(
                margin: EdgeInsets.all(0.0),
                padding: EdgeInsets.all(0.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Row(mainAxisSize: MainAxisSize.max, children: [
                    Container(
                      child: Icon(Icons.verified_user_rounded),
                      padding: EdgeInsets.all(20),
                    ),
                    Text("차차 님"),
                  ]),
                )),
          ),
          ListTile(
            title: Container(
                child: Row(
              children: [
                Icon(Icons.add),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
                Text("전체 주문 내역"),
              ],
            )),
          ),
          ListTile(
            title: Text("카드 관리"),
          ),
          ListTile(
            title: Text("리뷰 관리"),
          ),
          ListTile(
            title: Text("교환 / 환불"),
          )
        ],
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Flutter Demo',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
