import 'package:flutter/material.dart';
import 'ForgotPassword.dart';


class NewPassword extends StatefulWidget {
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate New Password'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children:<Widget> [
                Container(
                  width: 220,
                  height: 60,
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'New Password:',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.centerEnd,
                  width: 130,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(
                  width: 220,
                  height: 60,
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'Confirm Password:',
                    style: TextStyle(fontSize: 25),
                  ),

                ),
                Container(
                  alignment: AlignmentDirectional.centerEnd,
                  width: 130,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              width: 200,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange,
                    onPrimary: Colors.white),

                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPassword()));

                },
                child: Text('SAVE',style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.black87
                ),),

              ),

            ),
          )
        ],
      ) ,
    );
  }
}
