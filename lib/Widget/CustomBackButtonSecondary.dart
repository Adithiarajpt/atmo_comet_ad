import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget{
  var btnClr;
  CustomBackButton({
    this.btnClr
  });
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      color: btnClr,
      icon: Icon(Icons.arrow_back_ios_new_rounded),
    );
  }

}