import 'package:flutter/material.dart';
import 'NewPasswordGenerate.dart';


class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              'Forgot Password'
          )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Container(
                  width: 240,
                  height: 60,
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Enter the otp',style: TextStyle(
                      fontSize: 30
                  ),
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.centerEnd,
                  width: 150,
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
            Padding(
              padding: const EdgeInsets.all(40.0),
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
                  child: Text('VERIFY',style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black87
                  ),),

                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
