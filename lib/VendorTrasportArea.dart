import 'package:bspvendorapp/OrderAndVehicleDetails.dart';
import 'package:bspvendorapp/VehicleInformation.dart';
import 'package:flutter/material.dart';
import 'package:bspvendorapp/UI/login.dart';
import 'package:bspvendorapp/main.dart';

class VendorTransportArea extends StatefulWidget {
  @override
  _VendorTransportAreaState createState() => _VendorTransportAreaState();
}

class _VendorTransportAreaState extends State<VendorTransportArea> {

  String valueChoose;
  List listItem = [
    "Transport Area 1", "Transport Area 2"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF091E58),
      ),
      body: Container(

        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0x338d736d),

        child: Center(
            child: Container(
              width: 400,
              height: 570,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('images/sail.png',width: 150,height: 150),
                  login(Icon(
                      Icons.person_outline_outlined,color: Colors.black87), 'Vendor ID'),
                   /*Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(

                      padding: EdgeInsets.only(left:16,right:16 ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(15)

                      ),

                      child: DropdownButton(
                        focusColor: Colors.white,
                        hint: Text('Area Pass'),
                        dropdownColor: Colors.white,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 36,
                        isExpanded: true,
                        underline: SizedBox(),
                        value: valueChoose,
                        onChanged: (newValue)
                        {
                          setState(() {
                            valueChoose = newValue;
                          });
                        },
                        items: listItem.map((valueItem){
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );

                        }).toList(),
                      ),
                    ),
                  ),*/
                  Container(
                    width: 230,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.blueAccent,
                          backgroundColor: Color(0xFF091E58)
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VehicleInformation()));
                      },
                      child: Text('Generate New GatePass',style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,

                      ),
                      ),
                    ),
                  ),
                  Container(
                    width: 230,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.blueAccent,
                          backgroundColor: Color(0xFF091E58)
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VendorTransportArea()));
                      },
                      child: Text('Check Old GatePass',style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,

                      ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 120,
                          height: 37,

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF091E58),
                                onPrimary: Colors.white),

                            onPressed: () {

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));

                            },
                            child: Text('BACK',style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,



                            ),),



                          ),


                        ),

                      ],
                    ),
                  )

                ],
              ),

            )
        ),
      ),


    );
  }
}