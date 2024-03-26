import 'package:flutter/material.dart';
import 'package:graduation/Screens/courses_page.dart';
import 'package:graduation/Screens/login_page.dart';
import 'package:graduation/widgets/app_bar.dart';
import 'package:graduation/widgets/assignment_card.dart';
import 'package:graduation/widgets/course_card.dart';
import 'package:graduation/theme/colors.dart';
import 'package:graduation/widgets/button.dart';
import 'package:graduation/widgets/icons_bar.dart';
// import 'package:graduation/Screens/login_page.dart';
// import 'package:graduation/widgets/button.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  static String id = "second Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAF9F6),
      // appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),

          Container(
            child: const MyBar(),
          ),

          Container(
            // height: 38,
            // width: 363,
            margin: const EdgeInsets.only(right: 190),
            child: const Text(
              "WELCOME !..",
              style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 32,
                  color: Color(0xff7939FF),
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: 28,
            width: 364,
            child: const Text(
              "Courses",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Rubik',
                fontSize: 24,
                color: Color(0xff7939FF),
              ),
            ),
          ),

          const Coursecard(
            text: "Computer Vision",
            colors: green,
            percentage: .3,
          ),

          const Coursecard(
            text: "Network ",
            colors: Colors.yellow,
            percentage: .4,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, CoursesPage.id);
                },
                child: const SizedBox(
                  width: 100,
                  height: 18,
                  child: Text(
                    'All Cources',
                    style: TextStyle(fontSize: 13, fontFamily: 'Rubick'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Text(
                  "Assignment",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Rubick',
                      color: Color(0xff7939FF),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const AssignmentCard(
            text: ' Network',
            colors: Color(0xffF6FEF9),
            assignmentName: 'Network',
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              // Navigator.pushNamed(context, login_page.id);
            },
            child: const SizedBox(
              width: 100,
              height: 18,
              child: Text(
                'See More',
                style: TextStyle(fontSize: 13, fontFamily: 'Rubick'),
              ),
            ),
          ),
          const SizedBox(
            height: 75,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: IconsBar(),
          ),
        ],
      ),
    );
  }
}
