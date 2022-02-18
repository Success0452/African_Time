import 'package:flutter/material.dart';
import 'package:market/ui/models/instructor.dart';
import 'instructor_detail.dart';

class ListInstructor extends StatefulWidget {
  const ListInstructor({Key? key}) : super(key: key);

  @override
  _ListInstructorState createState() => _ListInstructorState();
}

class _ListInstructorState extends State<ListInstructor> {

  final instructors = allInstructor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              IconButton(
                onPressed: null,
                icon: Icon(Icons.arrow_back),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.menu),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              children: const [
                Text('Famous Tech',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.keyboard_arrow_down),
                ),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15.0),
            child: Text('Best tech company you can find around!',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w200,
              color: Colors.orange[700],
            ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 15.0, left: 15.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: IconButton(icon: Icon(Icons.search), onPressed: null,),
                suffixIcon: IconButton(icon: Icon(Icons.filter_list), onPressed: null,),
                hintText: 'Search',
                hintStyle: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey
                )
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200,
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              childAspectRatio: 0.67,
              primary: false,
              children: [
                ...instructors.map((e) {
                  return buildInstructorGrid(e);
                }).toList(),
              ],
            ),
          )
        ],
      ),
    );
  }

   buildInstructorGrid(Instructor e) {
    return GestureDetector(
      onTap: (){
        // Navigator.pushNamed(context, '/instructor_detail');
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => InstructorDetail(selectedInstructor: e)
        ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          children: [
            Container(
              height: 150.0,
              width: 100.0,
              color: Colors.transparent,
            ),
            Positioned(
              top: 65.0,
              left: 30.0,
              child: Container(
                width: 30.0,
                height: 40.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7.0,
                      color: Colors.grey.withOpacity(0.75),
                      offset: const Offset(5,25),
                      spreadRadius: 12.0
                    )
                  ]
                ),
              ),
            ),
            Positioned(
              top: 15.0,
              left: 12.0,
              child: Hero(
                tag: e.instructorPic,
                child: Container(
                  height: 110.0,
                  width: 85.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    image: DecorationImage(
                      image: AssetImage(e.instructorPic),
                      fit: BoxFit.cover
                    )
                  ),
                ),

              ),
            ),
            Positioned(
              top: 132.0,
              left: 22.0,
              child: Column(
                children: [
                  Text(e.instructorName,
                  style: const TextStyle(
                    fontSize: 10.0,
                  ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.grey.withOpacity(0.5),
                        size: 15.0,
                      ),
                      const SizedBox(width: 3.0,),
                      Text(e.rating,
                      style: const TextStyle(
                        fontSize: 11.0,

                      ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
