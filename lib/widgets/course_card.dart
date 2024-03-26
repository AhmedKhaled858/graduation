import 'package:flutter/material.dart';
import 'package:graduation/Screens/courses_page2.dart';
import 'package:graduation/Screens/login_page.dart';

class Coursecard extends StatelessWidget {
  const Coursecard(
      {super.key,
      required this.colors,
      required this.text,
      required this.percentage});
  final Color colors;
  final String text;
  final double percentage;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, CoursesPage2.id);
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 350,
            height: 72,
            decoration: BoxDecoration(
                color: colors,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3))
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10, top: 8),
                  child: Row(
                    children: [
                      Text(
                        text,
                        style: const TextStyle(
                          fontSize: 19,
                          fontFamily: 'Rubik',
                        ),
                      ),
                      Expanded(child: Container()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '${(percentage * 100).toInt()}%',
                            style: const TextStyle(
                              fontSize: 18,
                              fontFamily: 'Rubik',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    Container(
                      width: 330,
                      height: 7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey),
                    ),
                    FractionallySizedBox(
                      widthFactor: percentage,
                      child: Container(
                        height: 7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
