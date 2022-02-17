
import 'dart:ui';

import 'package:flutter/material.dart';
import '../services/argument.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

    Map data = {};

  @override
  Widget build(BuildContext context) {

     data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;

     String bgImage = data['isDayTime'] ? 'daytime.jpg' : 'night.jpg';
     Color? bgColor = data['isDayTime'] ? Colors.orange[600] : Colors.orange[200];

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/$bgImage'),
                  fit: BoxFit.cover
              )
              
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
              child: Column(
                children: [
                  FlatButton.icon(
                      onPressed: () async {
                        dynamic result = await Navigator.pushNamed(context, '/choose_location');
                         setState(() {
                           try{
                             data = {
                               'flag': result['flag'],
                               'location': result['location'],
                               'time': result['time'],
                               'isDayTime': result['isDayTime']
                             };
                           }catch(e){
                             print(e);
                           }
                         });
                      },
                      icon: Icon(
                          Icons.edit_location,
                        color: Colors.grey[300],
                      ),
                      label: const Text(
                          'Edit Location',
                      style: TextStyle(
                        color: Colors.white
                      ),
                      )
                  ),
                  const SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text( data['location'],
                      style:  const TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color: Colors.white
                      ),)
                    ],
                  ),
                  const SizedBox(height: 20.0,),
                  Text( data['time'],
                    style: const TextStyle(
                        fontSize: 66.0,
                        color: Colors.white
                    ),)
                ],
              ),
            ),
          )
      ),
    );
  }
}
