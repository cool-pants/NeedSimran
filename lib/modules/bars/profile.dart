import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:project_x/modules/home/home.dart';


class profileUI extends StatefulWidget {

  profileUI({Key key, this.title }) : super(key:key);
  final String title;
  _profileUIState createState() => _profileUIState();
}

class _profileUIState extends State<profileUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      backgroundColor: Color.fromRGBO(35, 43, 43, 250),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor:Color.fromRGBO(35, 43, 43, 1.0) ,
          centerTitle:false,
          flexibleSpace:Container(
            margin: EdgeInsets.only(left:20.0,bottom:10.0,right:20.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child:Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top:60.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left:5.0)),
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: Color.fromRGBO(102,255,0,1.0),
                          fontSize: 26.0,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ]
                  ),
                ]
              )
            )
          )
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).popAndPushNamed('/edit');
        },
        splashColor: Colors.white,
        backgroundColor: Color.fromRGBO(102,255,0,1.0),
        child:Icon(Icons.edit,color: Colors.black,)),
      body: Stack(
        children:<Widget>[
           Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                 children: <Widget>[
                   Padding(padding: EdgeInsets.only(top:100.0),),
                   //Padding(padding: EdgeInsets.only(top:15.0),),                 
                   Row(children: <Widget>[
                     Padding(padding: EdgeInsets.only(left:35.0),),
                     Container(
                       height:150,
                       width:350,
                       child: CircleAvatar(
                         radius:60,
                         backgroundColor: Color.fromRGBO(102,255,0,1.0),
                         child: Icon(Icons.person,size:100.0,color: Colors.black,),
                         
                       ),
                     )
                   ],),
                   Padding(padding: EdgeInsets.only(top:80.0)),
                   Row( 
                     mainAxisAlignment: MainAxisAlignment.center,                 
                     children: <Widget>[
                       //Padding(padding:EdgeInsets.only(left:0.0),),
                       InkWell(
                         child:Text(
                           "John Doe",
                           
                           style:TextStyle(
                             color: Colors.white,
                             fontSize: 30.0,
                             letterSpacing: 2.0,
                           fontWeight: FontWeight.bold)
                         )
                       )
                   ],),
                   Padding(padding: EdgeInsets.only(top:10.0)),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:<Widget>[
                       //Padding(padding: EdgeInsets.only(left:0.0)),
                       Container(                       
                         child: Text(
                           "UX designer",
                           style:TextStyle(
                             fontWeight: FontWeight.w300,
                             fontSize: 20.0,
                             color:Colors.grey,
                           )
                           ),)
                     ]
                   ),
                   Padding(padding: EdgeInsets.only(top:20.0)),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        icon:Icon(LineAwesomeIcons.linkedin_square,size:50.0,color: Color.fromRGBO(102,255,0,1.0)),
                        onPressed:(){},
                     ),
                     IconButton(
                        icon:Icon(LineAwesomeIcons.twitter_square,size:50.0,color: Color.fromRGBO(102,255,0,1.0)),
                        onPressed:(){
                         // Navigator.of(context).popAndPushNamed('/twitter');
                        },
                     ),
                     IconButton(
                        icon:Icon(LineAwesomeIcons.comments,size:50.0,color: Color.fromRGBO(102,255,0,1.0)),
                        onPressed:(){},
                     ),
                     IconButton(
                        icon:Icon(LineAwesomeIcons.github,size:50.0,color: Color.fromRGBO(102,255,0,1.0)),
                        onPressed:(){},
                     )

                    ],
                   ),
                   Padding(padding: EdgeInsets.only(top:100.0)),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                           height: 100.0,
                           width: 250.0,
                            color: Color.fromRGBO(102,255,0,1.0),
                           child: MaterialButton(
                            //padding:EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Text(
                                  "Set Availability",
                                  style: TextStyle(
                                    color:Colors.black,
                                    fontSize:20.0,
                                    letterSpacing: 1.0,
                                ),),
                                new Icon(
                                  Icons.arrow_right,
                                  color:Colors.black,
                                  size: 50.0,
                                )
                              ],
                            ),
                            onPressed: null),
                         ),
                       )
                     ],
                   ),
                   Padding(padding: EdgeInsets.only(top:10.0)),
                  //  Row(
                  //    children: <Widget>[
                  //      Padding(padding: EdgeInsets.only(left:10.0)),
                  //      Container(
                  //        height: 560.0,
                  //        width:415.0,
                  //        child: Card(
                  //         color: Color.fromRGBO(114, 138, 126,1),
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(10.0)
                  //         ),
                  //         //margin:EdgeInsets.all(5.0),
                  //         child: Column(
                  //           children: <Widget>[
                  //             ListTile(
                  //               leading: Icon(
                  //                 LineAwesomeIcons.envelope,
                  //                 size:60.0,
                  //                 color: Colors.white,
                  //               ),
                  //               title: Text(
                  //                 "Email",
                  //                 style:TextStyle(
                  //                   fontSize: 40.0,
                  //                   color: Colors.white,
                  //                   fontWeight: FontWeight.w300,
                  //                 )
                  //               ),
                  //               subtitle: Text(
                  //                 "xyz@gmail.com",
                  //                 style: TextStyle(
                  //                   fontSize:20.0,
                  //                   color:Colors.white,

                  //                 ),
                  //               ),
                  //             ),
                  //             Divider(
                  //               color:Colors.black,
                  //               height:20,
                  //               thickness:5.0,
                  //             ),
                  //             ListTile(
                  //               leading: Icon(
                  //                 LineAwesomeIcons.user,
                  //                 size:60.0,
                  //                 color: Colors.white,
                  //               ),
                  //               title: Text(
                  //                 "Gender",
                  //                 style:TextStyle(
                  //                   fontSize: 40.0,
                  //                   color: Colors.white,
                  //                   fontWeight: FontWeight.w300,
                  //                 )
                  //               ),
                  //               subtitle: Text(
                  //                 "Male/Female/rather not say/ Others",
                  //                 style: TextStyle(
                  //                   fontSize:20.0,
                  //                   color:Colors.white,
                  //                 ),
                  //               ),
                  //             ),
                  //             Divider(
                  //               color:Colors.black,
                  //               height:20,
                  //               thickness:5.0,
                  //             ),
                  //             ListTile(
                  //               trailing: Icon(
                  //                 Icons.arrow_right,
                  //                 size:60.0,
                  //                 color: Colors.white,
                  //               ),
                  //               leading: Icon(
                  //                 LineAwesomeIcons.briefcase,
                  //                 size:60.0,
                  //                 color: Colors.white,
                  //               ),
                  //               title: Text(
                  //                 "Experiences",
                  //                 style:TextStyle(
                  //                   fontSize: 40.0,
                  //                   color: Colors.white,
                  //                   fontWeight: FontWeight.w300,
                  //                 )
                  //               ),
                  //               subtitle: Text(
                  //                 "Experiences speak louder!",
                  //                 style: TextStyle(
                  //                   fontSize:20.0,
                  //                   color:Colors.white,

                  //                 ),
                  //               ),
                  //             ),
                  //             Divider(
                  //               color:Colors.black,
                  //               height:30,
                  //               thickness:5.0,
                  //             ),
                  //             ListTile(
                  //               leading: Icon(
                  //                 FontAwesomeIcons.microphoneAlt,
                  //                 size:60.0,
                  //                 color: Colors.white,
                  //               ),
                  //               title: Text(
                  //                 "Languages",
                  //                 style:TextStyle(
                  //                   fontSize: 40.0,
                  //                   color: Colors.white,
                  //                   fontWeight: FontWeight.w300,
                  //                 )
                  //               ),
                  //               trailing: Icon(
                  //                 Icons.arrow_right,
                  //                 size:60.0,
                  //                 color: Colors.white,
                  //               ),
                  //               subtitle: Text(
                  //                 "The ones I'm fluent in!",
                  //                 style: TextStyle(
                  //                   fontSize:20.0,
                  //                   color:Colors.white,
                  //                 ),
                  //               ),
                  //             ),
                  //             Divider(
                  //               color:Colors.black,
                  //               height:30,
                  //               thickness:5.0,
                  //             ),
                  //             ListTile(
                  //               leading: Icon(
                  //                 LineAwesomeIcons.briefcase,
                  //                 size:60.0,
                  //                 color: Colors.white,
                  //               ),
                  //               trailing: Icon(
                  //                 Icons.arrow_right,
                  //                 size:60.0,
                  //                 color: Colors.white,
                  //               ),
                  //               title: Text(
                  //                 "Languages",
                  //                 style:TextStyle(
                  //                   fontSize: 40.0,
                  //                   color: Colors.white,
                  //                   fontWeight: FontWeight.w300,
                  //                 )
                  //               ),
                  //               subtitle: Text(
                  //                 "The ones I code in!",
                  //                 style: TextStyle(
                  //                   fontSize:20.0,
                  //                   color:Colors.white,

                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),                            
                  //        ),
                  //      ),
                  //    ],
                  //  ),
                   Padding(
                     padding: EdgeInsets.only(top: 40.0),
                   ),
                  



               ],),
             ),
           )
        ]
      ),

    );
  }
}


class Experiences {
  final String title;
  List<String> contents=[];

  Experiences(this.title,this.contents);
}

final title=[
  'Experiences',
];

List<Experiences> items =[
  new Experiences("Experience", 
  [
    "Github",
    'Facebook',
  ]),
];

_buildExpandableContent(Experiences items){
  List<Widget> columnContent=[];


  for (String content in items.contents)
    columnContent.add(
      new ListTile(
        title: new Text(
          content,
          style:new TextStyle(fontSize: 18.0,color:Colors.lightBlue),
        ),

      )
    );
    return columnContent;
}