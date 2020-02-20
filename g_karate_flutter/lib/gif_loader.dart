import 'package:flutter/cupertino.dart';

class GifLoader extends StatefulWidget {
  GifLoader({Key key, this.image}) : super(key: key);

  final String image;

  @override
  _GifLoader createState() => _GifLoader();
}

class _GifLoader extends State<GifLoader> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: chosenImage(),
    );
  }
  Widget chosenImage(){
    if(widget.image == "1"){
      return Image.asset('assets/3.gif');
    }else if(widget.image == "2"){
      return Image.asset('assets/2a.gif');
    }else{
      return Image.asset('assets/lightbulb.jpg');
    }
}

}