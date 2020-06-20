import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:project_x/modules/post_feed/needsimran.dart';

class postHomeUI extends StatefulWidget {
  @override
  _postHomeUIState createState() => _postHomeUIState();
}

class _postHomeUIState extends State<postHomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(35, 43, 43, 250),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor:Color.fromRGBO(35, 43, 43, 1.0) ,
          centerTitle:false,
          leading: IconButton(
            icon: Icon(LineAwesomeIcons.arrow_left,color: Colors.white,size: 40.0,), onPressed: null),
          flexibleSpace:Container(
            margin: EdgeInsets.only(left:20.0,bottom:0.0,right:20.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child:Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top:30.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left:50.0)),
                      Text(
                        "Post it!",
                        style: TextStyle(
                          color: Color.fromRGBO(102,255,0,1.0),
                          fontSize: 40.0,
                          fontWeight: FontWeight.w400,
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
      body: Stack(
        children: <Widget>[
          Scrollbar(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top:10.0),),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 10.0)),
                      Container(
                        height:70.0,
                        width:415.0,
                        child: Card(
                          color:Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            children:<Widget>[
                              ListTile(
                                leading: Icon(
                                  LineAwesomeIcons.bell,
                                  color:Colors.black,
                                  size:40.0,
                                ),
                                title: Text(
                                  "All posts are entered into General category",
                                  style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                  )
                                  ),

                              )
                            ]
                          ),
                        ),
                      )

                  ],),
                  Padding(padding: EdgeInsets.only(top:20.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //Padding(padding: EdgeInsets.only(top: 10.0)),
                      Container(
                        height:150.0,
                        width:200.0,
                        child: Card(
                          color:Color.fromRGBO(236, 55, 80,1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:<Widget>[
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                      needSimranUI(),
                                    ),
                                  );
                                },
                                leading: Icon(
                                  LineAwesomeIcons.slack,
                                  color:Colors.white,
                                  size:40.0,
                                ),
                                title: Text(
                                  "Need Simran",
                                  style:TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.w300,
                                  )
                                  ),
                                  
                              )
                            ]
                          ),
                        ),
                      ),
                       Container(
                        height:150.0,
                        width:200.0,
                        child: Card(
                          color:Color.fromRGBO(255, 140, 55,1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:<Widget>[
                              ListTile(
                                // onTap: () {
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) =>
                                //       needSimranUI(),
                                //     ),
                                //   );
                                // },
                                leading: Icon(
                                  LineAwesomeIcons.slack,
                                  color:Colors.white,
                                  size:40.0,
                                ),
                                title: Text(
                                  "Need Help",
                                  style:TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.w300,
                                  )
                                  ),
                                  
                              )
                            ]
                          ),
                        ),
                      ),

                  ],),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //Padding(padding: EdgeInsets.only(top: 10.0)),
                      Container(
                        height:150.0,
                        width:200.0,
                        child: Card(
                          color:Color.fromRGBO(
                            235, 180, 36,1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:<Widget>[
                              ListTile(
                                leading: Icon(
                                  LineAwesomeIcons.slack,
                                  color:Colors.white,
                                  size:40.0,
                                ),
                                title: Text(
                                  "Need Advice",
                                  style:TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.w300,
                                  )
                                  ),
                                  
                              )
                            ]
                          ),
                        ),
                      ),
                       Container(
                        height:150.0,
                        width:200.0,
                        child: Card(
                          color:Color.fromRGBO(51, 214, 166,1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:<Widget>[
                              ListTile(
                                leading: Icon(
                                  LineAwesomeIcons.slack,
                                  color:Colors.white,
                                  size:40.0,
                                ),
                                title: Text(
                                  "Code Review",
                                  style:TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.w300,
                                  )
                                  ),
                                  
                              )
                            ]
                          ),
                        ),
                      ),

                  ],),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //Padding(padding: EdgeInsets.only(top: 10.0)),
                      Container(
                        height:150.0,
                        width:200.0,
                        child: Card(
                          color:Color.fromRGBO(91, 192, 222,1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:<Widget>[
                              ListTile(
                                leading: Icon(
                                  LineAwesomeIcons.slack,
                                  color:Colors.white,
                                  size:40.0,
                                ),
                                title: Text(
                                  "Design Review",
                                  style:TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.w300,
                                  )
                                  ),
                                  
                              )
                            ]
                          ),
                        ),
                      ),
                       Container(
                        height:150.0,
                        width:200.0,
                        child: Card(
                          color:Color.fromRGBO(51, 142, 218,1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:<Widget>[
                              ListTile(
                                leading: Icon(
                                  LineAwesomeIcons.slack,
                                  color:Colors.white,
                                  size:40.0,
                                ),
                                title: Text(
                                  "Project Idea",
                                  style:TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.w300,
                                  )
                                  ),
                                  
                              )
                            ]
                          ),
                        ),
                      ),

                  ],),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //Padding(padding: EdgeInsets.only(top: 10.0)),
                      Container(
                        height:150.0,
                        width:200.0,
                        child: Card(
                          color:Color.fromRGBO(132, 146, 166,1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:<Widget>[
                              ListTile(
                                leading: Icon(
                                  LineAwesomeIcons.slack,
                                  color:Colors.white,
                                  size:40.0,
                                ),
                                title: Text(
                                  "Resources",
                                  style:TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    //letterSpacing: 2.0,
                                    fontWeight: FontWeight.w300,
                                  )
                                  ),
                                  
                              )
                            ]
                          ),
                        ),
                      ),
                       Container(
                        height:150.0,
                        width:200.0,
                        child: Card(
                          color:Color.fromRGBO(63, 15, 63,1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:<Widget>[
                              ListTile(
                                leading: Icon(
                                  LineAwesomeIcons.slack,
                                  color:Colors.white,
                                  size:40.0,
                                ),
                                title: Text(
                                  "LinkedIn Review",
                                  style:TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    //letterSpacing: 2.0,
                                    fontWeight: FontWeight.w300,
                                  )
                                  ),
                                  
                              )
                            ]
                          ),
                        ),
                      ),

                  ],),
                  Padding(padding: EdgeInsets.only(top: 20.0)),


          ],),),)
        ],
      ),


      
    );
  }
}

