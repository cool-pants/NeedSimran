
import 'package:flutter/material.dart';
import 'package:project_x/modules/bars/editProfile.dart';
import 'package:project_x/modules/bars/profile.dart';
import 'package:project_x/modules/home/Explore.dart';
import 'package:project_x/modules/home/home.dart';
import 'package:project_x/modules/login/login.dart';
import 'package:project_x/modules/post_feed/Resources.dart';
import 'package:project_x/modules/post_feed/code_review.dart';
import 'package:project_x/modules/post_feed/design_review.dart';
import 'package:project_x/modules/post_feed/linkedin.dart';
import 'package:project_x/modules/post_feed/needadvice.dart';
import 'package:project_x/modules/post_feed/needhelp.dart';
import 'package:project_x/modules/post_feed/needsimran.dart';
import 'package:project_x/modules/post_feed/post_home.dart';
import 'package:project_x/modules/post_feed/project_idea.dart';
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
        home: HomeUI(),
        routes: <String,WidgetBuilder>{
          //'/login':(_) =>new LoginPage(),
          '/home':(_) =>new HomeUI(),
          '/edit':(_) =>new editProfile(),
          '/post':(_) =>new postHomeUI(),
          '/needsimran':(_) =>new needSimranUI(),
          '/needhelp':(_) =>new needHelpUI(),
          '/needadvice':(_) =>new needAdviceUI(),
          '/codereview':(_) =>new codeReviewUI(),
          '/designreview':(_) =>new designReviewUI(),
          '/projectidea':(_) =>new project_ideaUI(),
          '/resources':(_) =>new resourcesUI(),
          '/linkedin':(_) =>new linkedINUI(),
        },
        theme:new ThemeData(
          scaffoldBackgroundColor: Colors.black,
          backgroundColor: Colors.black,
          primaryColor: Color.fromRGBO(35,43,43,1.0),

      )
    );
  }
}

