
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
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
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
                chosenImage(),
                chosenFeetLeft(),
                chosenFeetRight(),
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget chosenImage(){
    if(imageGif == 0){
      return Image.asset('assets/1a.gif', height: 600, fit: BoxFit.fitWidth,);
    }else if(imageGif == 1){
      return Image.asset('assets/1b.gif', height: 600, fit: BoxFit.fitWidth,);
    }else if(imageGif == 2){
      return Image.asset('assets/4.gif', height: 600, fit: BoxFit.fitWidth,);
    } else if(imageGif == 3){
      return Image.asset('assets/5.gif', height: 600, fit: BoxFit.fitWidth,);
    } else if(imageGif == 4){
      return Image.asset('assets/thumbsUp.png', height: 300, fit: BoxFit.fitWidth,);
    }else{
      return Text('geen oefening geselecteerd');
    }
  }
  Widget chosenFeetLeft(){
    if(imageGif == 0){
      return Image.asset('assets/red_blink_left.gif', height: 600, fit: BoxFit.fitWidth,);
    }else if(imageGif == 1){
      return Image.asset('assets/green_blink_left.gif', height: 600, fit: BoxFit.fitWidth,);
    }else if(imageGif == 2){
      return Image.asset('assets/yellow_blink_left.gif', height: 600, fit: BoxFit.fitWidth,);
    } else if(imageGif == 3){
      return Image.asset('assets/green_blink_left.gif', height: 600, fit: BoxFit.fitWidth,);
    } else if(imageGif == 4){
      return Image.asset('assets/thumbsUp.png', height: 300, fit: BoxFit.fitWidth,);
    }else{
      return Text('geen oefening geselecteerd');
    }
  }
  Widget chosenFeetRight(){
    if(imageGif == 0){
      return Image.asset('assets/blue_blink_right.gif', height: 600, fit: BoxFit.fitWidth,);
    }else if(imageGif == 1){
      return Image.asset('assets/orange_blink_right.gif', height: 600, fit: BoxFit.fitWidth,);
    }else if(imageGif == 2){
      return Image.asset('assets/white_blink_right.gif', height: 600, fit: BoxFit.fitWidth,);
    } else if(imageGif == 3){
      return Image.asset('assets/orange_blink_right.gif', height: 600, fit: BoxFit.fitWidth,);
    } else if(imageGif == 4){
      return Image.asset('assets/thumbsUp.png', height: 300, fit: BoxFit.fitWidth,);
    }else{
      return Text('geen oefening geselecteerd');
    }
  }
}
