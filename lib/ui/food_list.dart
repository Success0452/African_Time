import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Recommended',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
              ),
              Text('SEE ALL',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  color: Color(0xFF469469),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 250.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              getCard('assets/daytime.jpg', 'day and time'),
              getCard('assets/night.jpg', 'night')
            ],
          ),
        )
      ],
    );
  }
  Widget getCard(String imgPath, String foodName){
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 25.0, bottom: 10.0),
      child: Container(
        height: 175.0,
        width: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 0.3,
              spreadRadius: 0.3,
              color: Colors.grey.withOpacity(0.3),
            )]
        ),
        child: Column(
          children: [
            Text('Break Fast',
              style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.grey.withOpacity(0.5),
                  fontWeight: FontWeight.bold
              ),),
            Text('Light Food',
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.grey.withOpacity(0.5),
                fontWeight: FontWeight.bold
              ),),
            const SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: const [
                  Icon(Icons.star, color: Colors.yellow, size: 14.0,),
                  Icon(Icons.star, color: Colors.yellow, size: 14.0,),
                  Icon(Icons.star, color: Colors.yellow, size: 14.0,),
                  Icon(Icons.star, color: Colors.yellow, size: 14.0,),
                  Icon(Icons.star_border, color: Colors.grey, size: 14.0,),
                  SizedBox(height: 10.0,),
                  Text('4.5',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
