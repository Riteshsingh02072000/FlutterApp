import 'package:bspvendorapp/UI/ForgotPassword.dart';
import 'package:flutter/material.dart';
import 'package:bspvendorapp/VendorTrasportArea.dart';
import './UI/login.dart';
import 'adminlogin.dart';
void main()
{
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Vendor App',
      home: HomeScreen()
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHiddenPassword = true;
  String hintText;
  Icon fieldIcon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xffbDDE3E1E1),
        child: Center(
          child: Container(
            width: 400,
            height: 570,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Image.asset('images/sail.png',width: 150,height: 150),


                Container(
                    width: 300,

                    child:Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.all(Radius.circular( 15.0)),
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(

                              width: 290,

                              child: TextField(

                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Vendor ID',
                                  hintStyle: TextStyle(fontSize: 20),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.person_outline_outlined, color: Colors.black87,),


                                ),
                              ),


                            ),
                          ],
                        )
                    )
                ),




                Container(
                    width: 300,

                    child:Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.all(Radius.circular( 15.0)),
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(

                              width: 290,


                              child: TextField(

                                obscureText: isHiddenPassword,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText: 'Password',
                                    hintStyle: TextStyle(fontSize: 20),
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.lock_outline, color: Colors.black87,),
                                    suffixIcon: InkWell(
                                        onTap: _togglePasswordView,
                                        child: Icon(
                                            Icons.visibility
                                        )
                                    )

                                ),
                              ),


                            ),
                          ],
                        )
                    )
                ),

                Container(
                  width: 250,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        onPrimary: Colors.white),

                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VendorTransportArea()));

                    },
                    child: Text('LOGIN',style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black87
                    ),),

                  ),
                ),
                Container(
                  width: 200,
                  height: 40,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.blueAccent,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                    },
                    child: Text('Forgot Password?',style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black87

                    ),
                    ),
                  ),
                ),
                Container(

                  width: 200,
                  height: 40,

                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,

                    ),

                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>adminlogin()));
                    },
                    child: Text('ADMIN LOGIN',style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black87


                    ),
                    ),
                  ),

                )

              ],
            ),
          ),
        ),
      ),
    );
  }
  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}