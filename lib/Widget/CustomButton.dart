import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget{
  String? text;
  var bg;
  FontWeight? fontWeight;
  Color? color;
  var onPressed;
  CustomeButton({this.text,this.color,this.fontWeight,this.bg,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onPressed();
      },
      child: Container(
        //width: 200,
        padding: EdgeInsets.all(28),
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:bg==null? Theme.of(context).primaryColor:bg
        ),
        child: Center(
          child: Text('$text',
            style: Theme.of(context).textTheme.headline3!.copyWith(
              fontWeight: fontWeight,
              color: color,
            ),),
        ),
      ),
    );
  }

}