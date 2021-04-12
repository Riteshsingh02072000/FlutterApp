import 'package:flutter/material.dart';
import 'package:bspvendorapp/adminlogin.dart';

class login extends StatelessWidget{
  Icon fieldIcon;
  String hintText;

  login(this.fieldIcon,this.hintText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300,
      child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.all(Radius.circular( 15.0)),
          color: Colors.white,
          child: Row(
            children: <Widget> [
              fieldIcon,
              Container(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,
                    hintText: hintText,

                  ),
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87

                  ),
                ),
              )
            ],
          )
      ),
    );

  }

}