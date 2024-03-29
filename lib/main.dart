import 'package:flutter/material.dart';
import 'package:market/pages/home.dart';
import 'package:market/pages/loading.dart';
import 'package:market/ui/food/food_page.dart';
import 'package:market/ui/instructor/list_instructor.dart';
import 'pages/choose_location.dart';

void main() {
  runApp(
      MaterialApp(
    initialRoute: "/loading",
    routes: {
      "/": (context) => const Home(),
      "/loading": (context) => const Loading(),
      "/choose_location": (context) => const ChooseLocation(),
      "/food_page": (context) => const FoodPage(),
      "/instructor": (context) => const ListInstructor(),
    } ,
  ));
}

