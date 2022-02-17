import 'package:flutter/material.dart';
import 'package:market/services/world_time.dart';

import '../services/argument.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  
  List<WorldTime> locations = [
    
    WorldTime(location: 'Abidjan', flag: 'daytime.jpg', url: 'Africa/Abidjan'),
    WorldTime(location: 'Accra', flag: 'night.jpg', url: 'Africa/Accra'),
    WorldTime(location: 'Algiers', flag: 'daytime.jpg', url: 'Africa/Algiers'),
    WorldTime(location: 'Bissau', flag: 'daytime.jpg', url: 'Africa/Bissau'),
    WorldTime(location: 'Cairo', flag: 'night.jpg', url: 'Africa/Cairo'),
    WorldTime(location: 'Casablanca', flag: 'daytime.jpg', url: 'Africa/Casablanca'),
    WorldTime(location: 'Ceuta', flag: 'night.jpg', url: 'Africa/Ceuta'),
    WorldTime(location: 'El_Aaiun', flag: 'daytime.jpg', url: 'Africa/El_Aaiun'),
    WorldTime(location: 'Johannesburg', flag: 'night.jpg', url: 'Africa/Johannesburg'),
    WorldTime(location: 'Juba', flag: 'daytime.jpg', url: 'Africa/Juba'),
    WorldTime(location: 'Khartoum', flag: 'night.jpg', url: 'Africa/Khartoum'),
    WorldTime(location: 'Lagos', flag: 'daytime.jpg', url: 'Africa/Lagos'),
    WorldTime(location: 'Maputo', flag: 'night.jpg', url: 'Africa/Maputo'),
    WorldTime(location: 'Monrovia', flag: 'daytime.jpg', url: 'Africa/Monrovia'),
    WorldTime(location: 'Nairobi', flag: 'night.jpg', url: 'Africa/Nairobi'),
    WorldTime(location: 'Ndjamena', flag: 'daytime.jpg', url: 'Africa/Ndjamena'),
    WorldTime(location: 'Sao_Tome', flag: 'night.jpg', url: 'Africa/Sao_Tome'),
    WorldTime(location: 'Tripoli', flag: 'daytime.jpg', url: 'Africa/Tripoli'),
    WorldTime(location: 'Tunis', flag: 'night.jpg', url: 'Africa/Tunis'),
    WorldTime(location: 'Windhoek', flag: 'daytime.jpg', url: 'Africa/Windhoek'),
    WorldTime(location: 'Tunis', flag: 'night.jpg', url: 'Africa/Tunis'),

  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();

    Navigator.pop(context,
      {
        'flag': instance.flag,
        'location': instance.location,
        'time': instance.time,
        'isDayTime' : instance.isDayTime
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Choose Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
          itemBuilder: (context, index){
          return Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/daytime.jpg'),
                    fit: BoxFit.cover
                )

            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/${locations[index].flag}'
                    ),
                  ),
                ),
              ),
            ),
          );
          }
      )
    );
  }
}
