import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int dropdownValue = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: Colors.cyan
                ),
                child: DropdownButton(
                  value: dropdownValue,
                  hint: Text('Select an Option'),
                  onChanged: (val) => setState(() => dropdownValue = val),
                  items: new List.generate(20, (int index) {
                    return new DropdownMenuItem(
                      value: index,
                      onTap: () {} ,
                      child: new Container(
                        child: Column(
                          children: [
                            new Text('Item #$index'),
                          ],
                        ),
                        width: 150.0,
                      )
                    );
                  })
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
