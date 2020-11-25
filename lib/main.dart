import 'package:bubble/custom-widgets/activityCard.dart';
import 'package:bubble/custom-widgets/generalCard.dart';
import 'package:bubble/custom-widgets/lostAndFound.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './homePage.dart';
import 'homePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'models/Post.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.grey[850],
        accentColor: Color(0xFF3A539B),

        // Define the default font family.
        // fontFamily: 'Robato',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      routes: {
        'home': (context) => HomePage(),
      },
      initialRoute: 'home',
    );
  }
}
