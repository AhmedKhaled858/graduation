import 'package:flutter/material.dart';
import 'package:graduation/theme/colors.dart';
import 'package:graduation/widgets/course_card.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});
  static String id = 'Courses page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Courses',
          style: TextStyle(
              color: Color(0xff7939FF),
              fontFamily: 'Rubik',
              fontWeight: FontWeight.bold,
              fontSize: 32),
        ),
      ),
      body: ListView(
        children: const [
          Coursecard(
            colors: blue,
            text: 'Marketing',
            percentage: .1,
          ),
          Coursecard(
            colors: green,
            text: 'Network',
            percentage: .8,
          ),
          Coursecard(
            colors: Colors.yellow,
            text: 'computer vision',
            percentage: .3,
          ),
          Coursecard(
            colors: Colors.black54,
            text: 'Ai',
            percentage: .4,
          ),
          Coursecard(
            colors: Colors.pinkAccent,
            text: 'flutter',
            percentage: .5,
          ),
          Coursecard(
            colors: Colors.purple,
            text: 'Web Design',
            percentage: .70,
          ),
          Coursecard(
            colors: Colors.purple,
            text: 'Web Design',
            percentage: .75,
          ),
          Coursecard(
            colors: Colors.purple,
            text: 'Web Design',
            percentage: .9,
          ),
          Coursecard(
            colors: Colors.purple,
            text: 'Web Design',
            percentage: .8,
          ),
        ],
      ),
    );
  }
}
