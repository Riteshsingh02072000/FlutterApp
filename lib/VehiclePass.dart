import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'VehicleInformation.dart';
import 'adminlogin.dart';

class VehiclePass extends StatefulWidget {
  @override
  _VehiclePassState createState() => _VehiclePassState();
}

class _VehiclePassState extends State<VehiclePass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle pass'),
        backgroundColor: Color(0xffFF050955),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffFF050955),
                ),
                child: Text('Vehicle Pass',
                  style: TextStyle(fontSize: 35,
                  color: Colors.white
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: AlignmentDirectional.centerStart,
                width: 200,
                height: 60,

                child: Text('1. Vehicle pass:',
                  style: TextStyle(fontSize: 24),),
              ),
              Container(

                width: 150,
                height: 40,

                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color(0xffFF050955),

                  ),

                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>adminlogin()));
                  },
                  child: Text('Generate',style: TextStyle(
                      fontSize: 22.0,

                      color: Colors.white,


                  ),
                  ),
                ),

              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: AlignmentDirectional.centerStart,
                width: 200,
                height: 60,
                child: Text('2. Vehicle pass:',
                  style: TextStyle(fontSize: 24),),
              ),
              Container(

                width: 150,
                height: 40,

                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color(0xffFF050955),

                  ),

                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>adminlogin()));
                  },
                  child: Text('Generate',style: TextStyle(
                    fontSize: 22.0,

                    color: Colors.white,


                  ),
                  ),
                ),

              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: AlignmentDirectional.centerStart,
                width: 200,
                height: 60,
                child: Text('3. Vehicle pass:',
                  style: TextStyle(fontSize: 24),),
              ),
              Container(

                width: 150,
                height: 40,

                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color(0xffFF050955),

                  ),

                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>adminlogin()));
                  },
                  child: Text('Generate',style: TextStyle(
                    fontSize: 22.0,

                    color: Colors.white,


                  ),
                  ),
                ),

              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: AlignmentDirectional.centerStart,
                width: 200,
                height: 60,
                child: Text('4. Vehicle pass:',
                  style: TextStyle(fontSize: 24),),
              ),
              Container(

                width: 150,
                height: 40,

                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color(0xffFF050955),

                  ),

                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>adminlogin()));
                  },
                  child: Text('Generate',style: TextStyle(
                    fontSize: 22.0,

                    color: Colors.white,


                  ),
                  ),
                ),

              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Container(
                  alignment: AlignmentDirectional.centerStart,
                  width: 150,
                  height: 40,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        onPrimary: Colors.white),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VehicleInformation()));

                    },
                    child: Text('BACK',style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black87,



                    ),),



                  ),


                ),
              ),
              Container(
                alignment: AlignmentDirectional.centerEnd,

                width: 150,
                height: 40,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffFF4D21),
                      onPrimary: Colors.white),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>VehiclePass()));

                  },
                  child: Text('NEXT',style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.black87,



                  ),),



                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
