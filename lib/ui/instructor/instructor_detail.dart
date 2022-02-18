
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter/material.dart';
import 'package:market/ui/models/instructor.dart';

class InstructorDetail extends StatefulWidget {
  final Instructor selectedInstructor;

  const InstructorDetail({Key? key, required this.selectedInstructor}) : super(key: key);


  @override
  _InstructorDetailState createState() => _InstructorDetailState();
}

class _InstructorDetailState extends State<InstructorDetail> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight,
            color: Colors.transparent,
          ),
          Container(
            width: screenWidth,
            height: screenHeight - screenHeight/3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/daytime.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Positioned(
            top: screenHeight - screenHeight/3 - 25.0,
            child: Container(
              padding: const EdgeInsets.only(left: 20.0),
              height: screenHeight / 3 - 25.0,
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25.0,),
                  Text(widget.selectedInstructor.instructorName,
                  style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  const SizedBox(height: 7.0,),
                  const Text('Famous Tech',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ), SizedBox(height: 7.0,),
                  Row(
                    children: [
                      SmoothStarRating(
                        allowHalfRating: false,
                        starCount: 5,
                        rating: 4.0,
                        size: 15.0,
                        color: const Color(0xFFF36F32),
                        spacing: 0.0,
                        borderColor: const Color(0xFFF36F32),
                      ),
                      const SizedBox(width: 5.0,),
                      const Text('4.7',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFD57843)
                      ),
                      ),
                      const SizedBox(width: 5.0,),
                      const Text('(200 Review)',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFC2C0B6)
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15.0,),
                  const Text('Famous Tech is the best tech company you could find around, we deal in different kind of tech product in the best way you could imagine it to be, you wont regret it',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff201f1c)
                    ),
                  ),
                  const Text('Read More',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0x0ff36f32)
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  Container(
                    width: 150.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('200',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text('Reviews',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF5e5b54)
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('4',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text('Programs',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF5e5b54)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFF8F8F8),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 75.0,
              width: 100.0,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('>',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFFF2D5),
                      ),
                    ),
                    Text('Availability',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFFF2D5),
                      ),
                    ),
                  ],
                ),
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0)),
                color: Color(0xFFFE6D2E)
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, top: 40.0),
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFA4B2AE),
                ),
                child: const Center(
                  child: Icon(Icons.arrow_back, size: 20.0, color: Colors.white),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0, top: 40.0),
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFA4B2AE),
                ),
                child: const Center(
                  child: Icon(Icons.favorite_border, size: 20.0, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            top: (screenHeight - screenHeight / 3) / 2,
            left: (screenWidth / 2) - 75.0,
            child: Container(
              height: 40.0,
              width: 150.0,
              decoration: BoxDecoration(
                color: const Color(0xFFA4B2AE),
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: const Center(
                child: Text('Explore Programs',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                ),
              ),
            ),

          ),
          Positioned(
            top: screenHeight - screenHeight / 3 - 45.0,
            right: 25.0,
            child: Hero(
              tag: widget.selectedInstructor.instructorPic,
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.selectedInstructor.instructorPic),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15.0)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
