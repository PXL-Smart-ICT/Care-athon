import 'package:flutter/material.dart';
import 'package:g_karate_flutter/gif_loader.dart';

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
  String imageGif;

  @override
  void initState() {
    imageGif = '';
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      imageGif = '1';
                    });
                  },
                  child: Text('Animatie 1'),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      imageGif = '2';
                    });
                    },
                  child: Text('Animatie 2'),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      imageGif = '3';
                    });
                  },
                  child: Text('Animatie 3'),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      imageGif = '4';
                    });
                  },
                  child: Text('Animatie 4'),
                ),
              ],
            ),
            chosenImage(),
          ],
        ),
      ),
    );
  }
  Widget chosenImage(){
    if(imageGif == '1'){
      return Image.asset('assets/3.gif');
    }else if(imageGif == '2'){
      return Image.asset('assets/2a.gif');
    }else if(imageGif == '3'){
      return Image.asset('assets/test2.gif');
    } else if(imageGif == '4'){
      return Image.asset('assets/test.gif');
    }else{
      return Text('geen oefening geselecteerd');
    }
  }
}
