import 'package:flutter/material.dart';
import 'package:g_karate_flutter/select_page.dart';

class SelectExercise extends StatefulWidget {
  SelectExercise({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SelectExercise createState() => _SelectExercise();
}

class _SelectExercise extends State<SelectExercise> {

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
                Center(child: Text('Selecteer een moeilijkheidsgraad', style: TextStyle(fontSize: 50), textAlign: TextAlign.center,)),
            Card(
              color: Colors.black12,
              child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SelectPage(title: "MoeilijkheidsGraad 1",)),);
            },
              child: Container(
                width: 500,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 100,
                    ),
                  ],
                ),
              ),
              ),
            ),
                Card(
                  color: Colors.black12,
              child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SelectPage(title: "MoeilijkheidsGraad 2",)),);
            },
              child: Container(
                width: 500,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 100,
                    ),
                    Icon(
                        Icons.star,
                        color: Colors.yellow,
                      size: 100,
                    ),
                  ],
                ),
              ),
              ),
            ),
                Card(
                  color: Colors.black12,

                  child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SelectPage(title: "MoeilijkheidsGraad 3",)),);
            },
              child: Container(
                width: 500,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 100,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 100,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 100,
                    ),
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
