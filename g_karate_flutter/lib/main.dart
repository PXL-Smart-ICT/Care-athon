import 'package:flutter/material.dart';
import 'package:g_karate_flutter/gif_loader.dart';
import 'package:g_karate_flutter/person_form.dart';
import 'package:g_karate_flutter/select_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'G-karate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'G-karate'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 500,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SelectPage(title: "G-karate",)),);
                          },
                          child:  Column(
                            children: <Widget>[
                              Icon(Icons.person, size: 300,),
                              Text('Tom', style: TextStyle(fontSize: 50)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 500,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SelectPage(title: "G-karate",)),);
                          },
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.person, size: 300,),
                              Text('Ronny', style: TextStyle(fontSize: 50)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 500,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SelectPage(title: "G-karate",)),);
                          },
                          child:  Column(
                            children: <Widget>[
                              Icon(Icons.person, size: 300,),
                              Text('Ann', style: TextStyle(fontSize: 50)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 500,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyCustomForm()),);
                          },
                          child:  Column(
                            children: <Widget>[
                              Icon(Icons.add_circle, size: 300,),
                              Text('Nieuw persoon toevoegen', style: TextStyle(fontSize: 50)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
            )
    );
  }

}
