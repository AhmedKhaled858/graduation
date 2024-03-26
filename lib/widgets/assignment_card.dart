import 'package:flutter/material.dart';

class AssignmentCard extends StatelessWidget {
  const AssignmentCard(
      {super.key,
      required this.colors,
      required this.text,
      required this.assignmentName});
  final Color colors;
  final String text;
  final String assignmentName;
  @override
  Widget build(BuildContext context) {
    return Container(
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
        ],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 14,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    text,
                    style: const TextStyle(fontSize: 19, fontFamily: 'Rubik'),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 5, left: 5, top: 14, bottom: 0),
                    child: Container(
                      width: 97,
                      height: 25,
                      decoration: BoxDecoration(
                          color: const Color(0xff838383),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                        child: Text(
                          'In Progress',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Rubik',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Assignment Name:$assignmentName",
                    style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xff838383),
                        fontFamily: 'Rubik'),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
