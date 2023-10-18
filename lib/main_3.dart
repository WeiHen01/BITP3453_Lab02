import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Text Input Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();

}
class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textFieldController1 = TextEditingController();
  TextEditingController _textFieldController2 = TextEditingController();
  TextEditingController _textFieldController3 = TextEditingController();

  void _onSubmit() {
    String text1 = _textFieldController1.text;
    String text2 = _textFieldController2.text;
    String text3 = _textFieldController3.text;

    print('Text Field 1: $text1');
    print('Text Field 2: $text2');
    print('Text Field 3: $text3');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Input Example'),
      ),

      //Lab Assignment: Navigation Menu
      drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Navigation Menu',
                style: TextStyle(color: Colors.white, fontSize: 25),),
              ),
            ],
      ),
      ),

      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _textFieldController1,
              decoration: InputDecoration(labelText: 'Enter Text 1'),
            ),
            TextField(
              controller: _textFieldController2,
              decoration: InputDecoration(labelText: 'Enter Text 2'),
            ),
            TextField(
              controller: _textFieldController3,
              decoration: InputDecoration(labelText: 'Enter Text 3 pls'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              //style: ex,
              onPressed: _onSubmit,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
