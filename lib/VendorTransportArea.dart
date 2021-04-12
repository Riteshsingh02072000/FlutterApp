

import 'package:flutter/material.dart';
import './UI/login.dart';
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
        title: Text('Vendor Area Pass'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
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
                  Padding(
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
                  ),
                  Container(
                    width: 150,
                    height: 40,

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          onPrimary: Colors.white),
                      onPressed: () {

                      },
                      child: Text('NEXT',style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black87,



                      ),),



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



