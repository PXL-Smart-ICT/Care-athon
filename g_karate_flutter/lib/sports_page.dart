import 'package:flutter/material.dart';
import 'package:g_karate_flutter/select_exercise_page.dart';

class StartExercise extends StatefulWidget {
  StartExercise({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StartExercise createState() => _StartExercise();
}

class _StartExercise extends State<StartExercise> {

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
                Center(child: Text('Selecte', style: TextStyle(fontSize: 50), textAlign: TextAlign.center,)),
                Card(
                  color: Colors.black,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SelectExercise(title: "MoeilijkheidsGraad 1",)),);
                    },
                    child: Container(
                      width: 500,
                      height: 100,
                      child: Image.asset('assets/yellow_hand', height: 200,)
                    ),
                  ),
                ),
                Card(
                  color: Colors.black12,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SelectExercise(title: "MoeilijkheidsGraad 2",)),);
                    },
                    child: Container(
                      width: 500,
                      height: 100,
                      child: Image.asset('assets/rug_exercise_pictogram')
,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black12,

                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SelectExercise(title: "MoeilijkheidsGraad 3",)),);
                    },
                    child: Container(
                      width: 500,
                      height: 100,
                      child: Image.asset('assets/rug_exercise_pictogram')
,
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
