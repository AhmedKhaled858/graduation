import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class CoursesPage2 extends StatelessWidget {
  const CoursesPage2({super.key});
  static String id = 'Course Page2';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Materials',
              ),
              Tab(
                text: 'Quizes',
              ),
              Tab(
                text: 'Announcements',
              )
            ],
            unselectedLabelStyle: TextStyle(
                color: Color(0xff838383),
                fontFamily: 'Rubik',
                fontWeight: FontWeight.bold,
                fontSize: 18),
            labelStyle: TextStyle(
                color: Color(0xff7939FF),
                fontSize: 18,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          title: const Text(
            "Marketing",
            style: TextStyle(
                color: Color(0xff7939FF),
                fontFamily: 'Rubik',
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Materials'),
            ),
            Center(
              child: Text('Quizes'),
            ),
            Center(
              child: Text('Announcements'),
            ),
          ],
        ),
      ),
    );
  }
}
