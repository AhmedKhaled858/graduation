import 'package:flutter/material.dart';
import 'package:graduation/Screens/courses_page.dart';
import 'package:graduation/Screens/courses_page2.dart';
import 'package:graduation/Screens/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:graduation/Screens/second_page.dart';
import 'package:graduation/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const project());
}

class project extends StatelessWidget {
  const project({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        login_page.id: (context) => login_page(),
        SecondScreen.id: (context) => SecondScreen(),
        CoursesPage.id: (context) => CoursesPage(),
        CoursesPage2.id: (context) => CoursesPage2(),
      },
      initialRoute: login_page.id,
    );
  }
}
