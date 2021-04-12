import 'package:bspvendorapp/VehicleInformation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'VendorTransportArea.dart';
import 'VendorTransportArea.dart';


class OrderAndVehicleDetails extends StatefulWidget {
  @override
  _OrderAndVehicleDetailsState createState() => _OrderAndVehicleDetailsState();
}

class _OrderAndVehicleDetailsState extends State<OrderAndVehicleDetails> {
  int VehicleCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle And Order Details'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    width: 245,
                    height: 70,
                    child: Text('Number of vehicles:',style: TextStyle(fontSize: 25) ),

                  ),
                ),
                Container(
                  width: 75,
                  height: 60,
                  child: NumberInputWithIncrementDecrement(
                    controller: TextEditingController(),
                    min: 1,
                    max: 100,
                  ),

                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  alignment: Alignment.center,
                  child: Text('Authorized Representative:', style: TextStyle(fontSize: 25),),

                ),
                Container(
                  width: 160,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VendorTransportArea()));

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
                        primary: Colors.deepOrange,
                        onPrimary: Colors.white),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VehicleInformation()));

                    },
                    child: Text('NEXT',style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black87,



                    ),),



                  ),
                )
              ],
            )


          ]

      ),

    );
  }
}