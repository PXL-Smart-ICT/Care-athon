
import 'package:flutter/material.dart';

class SelectPage extends StatefulWidget {
  SelectPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SelectPage createState() => _SelectPage();
}

class _SelectPage extends State<SelectPage> {
  int imageGif;

  @override
  void initState() {
    imageGif = 0;
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
      body: SingleChildScrollView(child: exercise())
    );
  }

  Widget exercise(){
    if (imageGif == 4){
      return Column(
        children: <Widget>[
          Image.asset('assets/thumbsUp.png', height: 500, fit: BoxFit.fitWidth,),
          RaisedButton(
            onPressed: () {
              setState(() {
                imageGif = 0;
              });
            },
            child: Icon(Icons.refresh),
          ),
        ],
      );
    }else {
      return Center(
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    chosenHands(),
                  ],
                ),
                chosenImage(),
                RaisedButton(
                  onPressed: () {
                    if(imageGif <4){
                      setState(() {
                        imageGif +=1;
                      });
                    }
                  },
                  child: Icon(Icons.arrow_forward_ios),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      imageGif = 0;
                    });
                  },
                  child: Icon(Icons.refresh),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                chosenFeetLeft(),
                chosenFeetRight(),
              ],
            )
          ],
        ),
      );
    }
  }

  Widget chosenImage(){
    if(imageGif == 0){
      return Image.asset('assets/1a.gif', height: 500, fit: BoxFit.fitWidth,);
    }else if(imageGif == 1){
      return Image.asset('assets/1b.gif', height: 500, fit: BoxFit.fitWidth,);
    }else if(imageGif == 2){
      return Image.asset('assets/4.gif', height: 500, fit: BoxFit.fitWidth,);
    } else if(imageGif == 3){
      return Image.asset('assets/5.gif', height: 500, fit: BoxFit.fitWidth,);
    } else if(imageGif == 4){
      return Image.asset('assets/thumbsUp.png', height: 300, fit: BoxFit.fitWidth,);
    }else{
      return Text('geen oefening geselecteerd');
    }
  }
  Widget chosenFeetLeft(){
    if(imageGif == 0){
      return Image.asset('assets/red_blink_left.gif', height: 700, fit: BoxFit.fitWidth,);
    }else if(imageGif == 1){
      return Image.asset('assets/green_blink_left.gif', height: 700, fit: BoxFit.fitWidth,);
    }else if(imageGif == 2){
      return Image.asset('assets/yellow_blink_left.gif', height: 700, fit: BoxFit.fitWidth,);
    } else if(imageGif == 3){
      return Image.asset('assets/green_blink_left.gif', height: 700, fit: BoxFit.fitWidth,);
    } else if(imageGif == 4){
      return Image.asset('assets/thumbsUp.png', height: 300, fit: BoxFit.fitWidth,);
    }else{
      return Text('geen oefening geselecteerd');
    }
  }
  Widget chosenFeetRight(){
    if(imageGif == 0){
      return Image.asset('assets/blue_blink_right.gif', height: 700, fit: BoxFit.fitWidth,);
    }else if(imageGif == 1){
      return Image.asset('assets/orange_blink_right.gif', height: 700, fit: BoxFit.fitWidth,);
    }else if(imageGif == 2){
      return Image.asset('assets/white_blink_right.gif', height: 700, fit: BoxFit.fitWidth,);
    } else if(imageGif == 3){
      return Image.asset('assets/orange_blink_right.gif', height: 700, fit: BoxFit.fitWidth,);
    } else if(imageGif == 4){
      return Image.asset('assets/thumbsUp.png', height: 300, fit: BoxFit.fitWidth,);
    }else{
      return Text('geen oefening geselecteerd');
    }
  }
  Widget chosenHands(){
    if(imageGif == 0){
      return Image.asset('assets/blue_hand.png', height: 100, fit: BoxFit.fitWidth,);
    }else if(imageGif == 1){
      return Image.asset('assets/red_hand.png', height: 100, fit: BoxFit.fitWidth,);
    }else if(imageGif == 2){
      return Image.asset('assets/white_hand.png', height: 100, fit: BoxFit.fitWidth,);
    } else if(imageGif == 3){
      return Image.asset('assets/yellow_hand.png', height: 100, fit: BoxFit.fitWidth,);
    } else if(imageGif == 4){
      return Image.asset('assets/thumbsUp.png', height: 300, fit: BoxFit.fitWidth,);
    }else{
      return Text('geen oefening geselecteerd');
    }
  }
}
