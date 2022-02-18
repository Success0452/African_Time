import 'package:flutter/material.dart';

import 'food_list.dart';


class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> with SingleTickerProviderStateMixin{

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(height: 300.0,),
              Container(

                height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/daytime.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 150.0,
                left: 25.0,
                child: Container(
                  height: 140.0,
                  width: 140.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0
                    ),
                    borderRadius: BorderRadius.circular(70.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/night.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 225.0,
                left: 175.0,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Famous',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        Text('1000 Followers',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 15.0,),
                    Container(
                        height: 30.0,
                        width: 75.0,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(12.0)
                        ),
                        child: const Center(
                          child: Text('Follow',
                            style: TextStyle(
                                fontSize: 11.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.green
                            ),),
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              indicatorColor: const Color(0xFF469469),
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              tabs: const [
                Tab(
                  child: Text('Recipes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                Tab(
                  child: Text('Gallery',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                Tab(
                  child: Text('Story',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 325.0,
            child: TabBarView(
              controller: tabController,
              children: const [
                FoodList(),
                FoodList(),
                FoodList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
