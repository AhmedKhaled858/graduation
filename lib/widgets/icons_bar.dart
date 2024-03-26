import 'package:flutter/material.dart';
import 'package:graduation/Screens/second_page.dart';

class IconsBar extends StatelessWidget {
  const IconsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home, color: Color(0xFF7939FF)),
              onPressed: () {
                Navigator.pushNamed(context, SecondScreen.id);
              },
            ),
            IconButton(
              icon: Icon(Icons.search, color: Color(0xFF7939FF)),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.message, color: Color(0xFF7939FF)),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications, color: Color(0xFF7939FF)),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person, color: Color(0xFF7939FF)),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
