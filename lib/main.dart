
import 'package:flutter/material.dart';
import 'package:project_x/modules/bars/editProfile.dart';
import 'package:project_x/modules/bars/profile.dart';
import 'package:project_x/modules/home/Explore.dart';
import 'package:project_x/modules/home/home.dart';
import 'package:project_x/modules/login/login.dart';
import 'package:project_x/modules/post_feed/needsimran.dart';
import 'package:project_x/modules/post_feed/post_home.dart';
import 'package:project_x/modules/signup/otp.dart';
import 'package:project_x/modules/signup/signupUI.dart';





void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: needSimranUI(),
        routes: <String,WidgetBuilder>{
          //'/login':(_) =>new LoginPage(),
          '/edit':(_) =>new editProfile(),
          '/post':(_) =>new postHomeUI(),
          '/needsimran':(_) =>new needSimranUI(),
        },
        theme:new ThemeData(
          scaffoldBackgroundColor: Colors.black,
          backgroundColor: Colors.black,
          primaryColor: Color.fromRGBO(35,43,43,1.0),

      )
    );
  }
}

