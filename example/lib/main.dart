import 'package:flutter/material.dart';
import 'package:flog/flog.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  showLog() {
    Flog.config(true);

    Flog.v('this is a message with v.');
    Flog.v('this is a message with v.', tag: 'okfood');

    Flog.d('this is a message with d.');
    Flog.d('this is a message with d.', tag: 'okfood');

    Flog.i('this is a message with i.');
    Flog.i('this is a message with i.', tag: 'okfood');

    Flog.w('this is a message with w.');
    Flog.w('this is a message with w.', tag: 'okfood');

    Flog.e('this is a message with e.');
    Flog.e('this is a message with e.', tag: 'okfood');

    Flog.println('this is a message with print.');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: new RaisedButton(
            onPressed: showLog,
            child: Text('打印日志'),
          ),
        ),
      ),
    );
  }
}
