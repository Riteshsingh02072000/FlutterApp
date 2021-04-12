import 'package:bspvendorapp/VehiclePass.dart';
import 'VendorTrasportArea.dart';
import 'package:flutter/material.dart';
import 'OrderAndVehicleDetails.dart';

class VehicleInformation extends StatefulWidget {
  @override
  _VehicleInformationState createState() => _VehicleInformationState();
}

class _VehicleInformationState extends State<VehicleInformation> {
  String valueChoose;
  String valueChoose1;
  List listItem = [
    "Vehicle Type1", "Vehicle Type2", "Vehicle Type3"
  ];
  List listItem1 = [
    "Authorised Represntive1", "Authorised Represntive2", "Authorised Represntive3"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: AppBar(
          title: Text('Vehicle Information'),
          backgroundColor: Color(0x44FF061B47)
      ),
      body: Column(


        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                width: 180,
                height: 45,
                child: Text('Authorised Representatives',
                  style: TextStyle(fontSize: 20),),
              ),
              Container(
                width: 200,
                alignment: AlignmentDirectional.centerEnd,
                height: 60,
                child: DropdownButton(
                  focusColor: Colors.white,
                  hint: Text('Select Authorised Representatives'),
                  dropdownColor: Colors.white,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  isExpanded: true,
                  underline: SizedBox(),
                  value: valueChoose1,
                  onChanged: (newValue1)
                  {
                    setState(() {
                      valueChoose1 = newValue1;
                    });
                  },
                  items: listItem1.map((valueItem1){
                    return DropdownMenuItem(
                      value: valueItem1,
                      child: Text(valueItem1),
                    );

                  }).toList(),

                ),
              ),

            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                width: 150,
                height: 45,
                child: Text('Tons:',
                  style: TextStyle(fontSize: 20),),
              ),
              Container(
                alignment: Alignment.centerRight,
                width: 170,
                height: 50,
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                width: 120,
                height: 45,
                child: Text('Vehicle Type:',
                  style: TextStyle(fontSize: 20),),
              ),
              Container(
                width: 180,
                alignment: AlignmentDirectional.centerEnd,
                height: 60,
                child: DropdownButton(
                  focusColor: Colors.white,
                  hint: Text('Select Vehicle Type'),
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

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                width: 150,
                height: 45,
                child: Text('Vehicle Number:',
                  style: TextStyle(fontSize: 20),),
              ),
              Container(
                alignment: Alignment.centerRight,
                width: 170,
                height: 50,
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                width: 150,
                height: 45,
                child: Text('Driving License:',
                  style: TextStyle(fontSize: 20),),
              ),
              Container(
                alignment: Alignment.centerRight,
                width: 170,
                height: 50,
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                width: 150,
                height: 45,
                child: Text('Driver Name:',
                  style: TextStyle(fontSize: 20),),
              ),
              Container(
                alignment: Alignment.centerRight,
                width: 170,
                height: 45,
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                width: 150,
                height: 45,
                child: Text('Age:',
                  style: TextStyle(fontSize: 20),),
              ),
              Container(
                alignment: Alignment.centerRight,
                width: 170,
                height: 45,
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: 150,
                height: 45,
                child: Text('Number Of Helpers:',
                  style: TextStyle(fontSize: 20),),
              ),
              Container(
                alignment: Alignment.center,
                width: 170,
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
            ],
          ),

          Container(
            width: 150,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffFF0A0C57),
                  onPrimary: Colors.white),

              onPressed: () {
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>VendorTransportArea()));

              },
              child: Text('SAVE',style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white
              ),),

            ),
          ),

          Container(
            width: 310,
            height: 31,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff09227b),
                  onPrimary: Colors.white),

              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>VehicleInformation()));

              },
              child: Text('Add Another Vehicle',style: TextStyle(
                  fontSize: 19.0,
                  color: Colors.white
              ),),

            ),
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
                        primary: Color(0xFF091E58),
                        onPrimary: Colors.white),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderAndVehicleDetails()));

                    },
                    child: Text('BACK',style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,



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
                      primary: Color(0xFF091E58),
                      onPrimary: Colors.white),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>VehiclePass()));

                  },
                  child: Text('NEXT',style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,



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