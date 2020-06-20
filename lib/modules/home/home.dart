import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:project_x/modules/bars/profile.dart';
import 'package:project_x/modules/home/Explore.dart';

class HomeUI extends StatefulWidget {
  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {

  int currentTab = 0;
  final List<Widget> screens=[
    ExploreUI(),
    profileUI(),
  ];
  Widget currentScreen = ExploreUI();
  final PageStorageBucket bucket =PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child:currentScreen ,
        bucket: bucket,
        ),

      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Colors.black,
      //   color: Colors.white,
      //   index:0,
      //   buttonBackgroundColor: Color.fromRGBO(20, 40, 40, 2.0),
      //   height: 60.0,
      //   onTap: (index){
      //     setState(() {
      //       currentTab= index;
      //     });
      //   },
      //   items: <Widget>[
      //     Icon(LineAwesomeIcons.compass,size:30,
      //     color:currentTab==0?Color.fromRGBO(102,255,0,1.0):Colors.black,),
      //     Icon(LineAwesomeIcons.group,size:30,
      //     color:currentTab==1?Color.fromRGBO(102,255,0,1.0):Colors.black,),
      //     Icon(LineAwesomeIcons.bars,size:30,
      //     color:currentTab==2?Color.fromRGBO(102,255,0,1.0):Colors.black,)
      //   ],
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton.extended(
          elevation: 4.0,
          backgroundColor: Color.fromRGBO(102,255,0,1.0),
          icon: const Icon(Icons.edit,color: Colors.black87,),
          label: const Text("Post",style: TextStyle(color:Colors.black87),),
          onPressed: (){
            setState(() {
              Navigator.of(context).pushNamed("/post");
            });
          }),
      bottomNavigationBar:BottomAppBar(
        color: Color.fromRGBO(35, 43, 43, 1.0),
        notchMargin: 10.0,
        shape:AutomaticNotchedShape(
          RoundedRectangleBorder(),
          StadiumBorder(
            side:BorderSide(),
          )
        ),
        child: Container(
          height: 60,
          child:Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                  ),
                  MaterialButton(
                    minWidth:40,
                    onPressed: (){
                      setState(() {
                        currentScreen= ExploreUI();
                        currentTab=0;

                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                        LineAwesomeIcons.compass,size:30,
                        color:currentTab==0?Color.fromRGBO(102,255,0,1.0):Colors.white,),
                      ],
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 270),
                  ),
                  MaterialButton(
                    minWidth:40,
                    onPressed: (){
                      setState(() {                        
                        currentScreen= profileUI();
                        currentTab=1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          LineAwesomeIcons.bars,size:30,
                          color:currentTab==1?Color.fromRGBO(102,255,0,1.0):Colors.white,),
                      ],
                    ),

                  )
                ],
              )
            ],
          ) ,

        ),
      ),
      
    );
  }
}