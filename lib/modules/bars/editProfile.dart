import 'package:flutter/material.dart';

class editProfile extends StatefulWidget {
  @override
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode _focusNode1;
  FocusNode _focusNode2; 
  FocusNode _focusNode3; 
  FocusNode _focusNode4; 
  FocusNode _focusNode5; 
  FocusNode _focusNode6; 
  FocusNode _focusNode7; 
  FocusNode _focusNode8; 
  FocusNode _focusNode9; 

  String _name;

  void initState(){
    super.initState();
    _focusNode1 =FocusNode();
    _focusNode2 =FocusNode(); 
    _focusNode3 =FocusNode(); 
    _focusNode4 =FocusNode();    
    _focusNode5 =FocusNode();
    _focusNode6 =FocusNode();  
    _focusNode7 =FocusNode(); 
    _focusNode8 =FocusNode(); 
    _focusNode9 =FocusNode(); 

  }

     
  void _requestFocus1(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode1);
    });
  }


  void _requestFocus2(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode2);
    });
  }

   
  void _requestFocus3(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode3);
    });
  }
   
  void _requestFocus4(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode4);
    });
  }
   
  void _requestFocus5(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode5);
    });
  }
  void _requestFocus6(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode6);
    });
  }

void _requestFocus7(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode7);
    });
  }
void _requestFocus8(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode8);
    });
  }

void _requestFocus9(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode9);
    });
  }


  

  void dispose1(){
    _focusNode1.dispose();
    super.dispose();
  }

    void dispose2(){
    _focusNode2.dispose();
    super.dispose();
  }
  void dispose3(){
    _focusNode3.dispose();
    super.dispose();
  }
  void dispose4(){
    _focusNode4.dispose();
    super.dispose();
  }
  void dispose5(){
    _focusNode5.dispose();
    super.dispose();
  }
  void dispose6(){
    _focusNode6.dispose();
    super.dispose();
  }
  void dispose7(){
    _focusNode7.dispose();
    super.dispose();
  }
  void dispose8(){
    _focusNode8.dispose();
    super.dispose();
  }
  void dispose9(){
    _focusNode9.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
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
                        "Edit Profile",
                        style: TextStyle(
                          color: Color.fromRGBO(102,255,0,1.0),
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left:125.0),),
                      MaterialButton(
                        elevation: 20.0,
                        color:Color.fromRGBO(96, 96, 96, 1.0),
                        height: 45.0,
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(20.0)
                        ),
                        onPressed: (){},
                        child: Row(
                          children: <Widget>[
                            Icon(
                             Icons.save,
                             color: Color.fromRGBO(102,255,0,1.0),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10.0)),
                            Text(
                              "Save",
                              style:TextStyle(
                                fontSize:20.0,
                                color: Color.fromRGBO(102,255,0,1.0),
                              ),
                            )
                          ],
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
                children:<Widget>[
                  Padding(padding: EdgeInsets.only(top:20.0),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                       child: CircleAvatar(
                         radius: 150.0,
                         backgroundColor: Colors.green,
                       ),
                      )],
                  ),
                  Form(
                    key: _formKey,
                    child: new Theme(
                      data: new ThemeData(
                        primaryColor: Color.fromRGBO(102,255,0,1.0),
                      inputDecorationTheme: new InputDecorationTheme(
                        labelStyle: new TextStyle(
                          color:Colors.black,
                          fontSize:30.0,
                        )
                      )
                      ),
                      child: new Container(
                        padding:const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Padding(padding: EdgeInsets.only(top:10.0)),
                            Container(
                            height: 100.0,
                            width:350.0,
                            child: new TextFormField(
                              enabled: false,                   
                              initialValue: "User email",
                              style: TextStyle(
                                fontSize:20.0,
                                color:Colors. white54,
                              ),
                              decoration:new InputDecoration(
                               labelText: "Email Address",
                               border: new OutlineInputBorder(
                                 borderRadius:BorderRadius.circular(15.0),
                                 borderSide: BorderSide(
                                   width:3.0,
                                   color: Color.fromRGBO(102,255,0,1.0),
                                 ),
                               ),
                               disabledBorder: new OutlineInputBorder(
                                 borderRadius:new BorderRadius.circular(15.0),
                                 borderSide:BorderSide(
                                   width:3.0,
                                   color:Color.fromRGBO(102,255,0,1.0),
                                )
                               ),
                               labelStyle: TextStyle(
                                 fontSize: 15.0,
                                color: Colors.white,
                               )
                               )
                        ),
                      ),
                      //new Padding(padding: EdgeInsets.only(top:.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(left:20.0)),
                          Container(
                            height: 40.0,
                            width: 200.0,
                            child:InkWell(
                              child:Text(
                                "Personal Details",
                                style: TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize:25.0,
                                  )
                              )
                            )

                          ),
                        ],
                      ),
                      Container(
                            height: 80.0,
                            width:350.0,
                            child: new TextFormField(
                              focusNode: _focusNode1,
                              onTap: _requestFocus1,
                              keyboardType: TextInputType.text,
                              onFieldSubmitted:(v){
                                FocusScope.of(context).requestFocus(_focusNode2);
                              },
                              textInputAction:TextInputAction.next,
                              //initialValue: "First Name",
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize:20.0,
                                color:Colors. white,
                              ),
                              decoration:new InputDecoration(
                               labelText: "First Name",
                               border: new OutlineInputBorder(
                                 borderRadius:BorderRadius.circular(15.0),
                                 borderSide: BorderSide(
                                   width:3.0,
                                   color: Color.fromRGBO(102,255,0,1.0),
                                 ),
                               ),
                               enabledBorder: new OutlineInputBorder(
                                 borderRadius:new BorderRadius.circular(15.0),
                                 borderSide:BorderSide(
                                   width:3.0,
                                   color:Color.fromRGBO(102,255,0,1.0),
                                )
                               ),
                               labelStyle: TextStyle(
                                 fontSize: 15.0,
                                color:Colors.white,
                               )
                               )
                        ),
                      ),
                      //new Padding(padding: EdgeInsets.only(top:10.0)),
                      Container(
                            height: 80.0,
                            width:350.0,
                            child: new TextFormField(
                              focusNode: _focusNode2,
                              onTap: _requestFocus2,
                              keyboardType: TextInputType.text,
                              // onFieldSubmitted:(v){
                              //   FocusScope.of(context).requestFocus(_focusNode3);
                              // },
                              textInputAction:TextInputAction.done,
                              //Hin "Last Name",
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize:20.0,
                                color:Colors. white,
                              ),
                              decoration:new InputDecoration(
                               labelText: "Last Name",
                               border: new OutlineInputBorder(
                                 borderRadius:BorderRadius.circular(15.0),
                                 borderSide: BorderSide(
                                   width:3.0,
                                   color: Color.fromRGBO(102,255,0,1.0),
                                 ),
                               ),
                               enabledBorder: new OutlineInputBorder(
                                 borderRadius:new BorderRadius.circular(15.0),
                                 borderSide:BorderSide(
                                   width:3.0,
                                   color:Color.fromRGBO(102,255,0,1.0),
                                )
                               ),
                               labelStyle: TextStyle(
                                 fontSize: 15.0,
                                color:Colors.white,
                               )
                               )
                        ),
                      ),
                      // Container(
                      //       height: 80.0,
                      //       width:350.0,
                      //       child: new TextFormField(
                      //         // focusNode: _focusNode1,
                      //         // onTap: _requestFocus1,
                      //         keyboardType: TextInputType.text,
                      //         // onFieldSubmitted:(v){
                      //         //   FocusScope.of(context).requestFocus(_focusNode2);
                      //         // },
                      //         textInputAction:TextInputAction.next,
                      //         //initialValue: "Last Name",
                      //         cursorColor: Colors.white,
                      //         style: TextStyle(
                      //           fontSize:20.0,
                      //           color:Colors.white54,
                      //         ),
                      //         decoration:new InputDecoration(
                      //          labelText: "Gender",
                      //          border: new OutlineInputBorder(
                      //            borderRadius:BorderRadius.circular(15.0),
                      //            borderSide: BorderSide(
                      //              width:3.0,
                      //              color: Color.fromRGBO(102,255,0,1.0),
                      //            ),
                      //          ),
                      //          enabledBorder: new OutlineInputBorder(
                      //            borderRadius:new BorderRadius.circular(15.0),
                      //            borderSide:BorderSide(
                      //              width:3.0,
                      //              color:Color.fromRGBO(102,255,0,1.0),
                      //           )
                      //          ),
                      //          labelStyle: TextStyle(
                      //            fontSize: 15.0,
                      //           color:_focusNode1.hasFocus ? Color.fromRGBO(102,255,0,1.0) : Colors.white,
                      //          )
                      //          )
                      //   ),
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(left:20.0)),
                          Container(
                            height: 70.0,
                            width: 300.0,
                            child:InkWell(
                              child:Text(
                                "How would you Introduce yourself to people ?",
                                style: TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize:25.0,
                                  )
                              )
                            )
                          ),
                        ],
                      ),   
                      new Padding(padding: EdgeInsets.only(top:10.0)),
                      Container(
                            height: 80.0,
                            width:350.0,
                            child: new TextFormField(
                              focusNode: _focusNode3,
                              onTap: _requestFocus3,
                              keyboardType: TextInputType.text,
                              onFieldSubmitted:(v){
                                FocusScope.of(context).requestFocus(_focusNode4);
                              },
                              textInputAction:TextInputAction.next,
                              //initialValue: "",
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize:20.0,
                                color:Colors. white,
                              ),
                              decoration:new InputDecoration(
                               labelText: "Description",
                               border: new OutlineInputBorder(
                                 borderRadius:BorderRadius.circular(15.0),
                                 borderSide: BorderSide(
                                   width:3.0,
                                   color: Color.fromRGBO(102,255,0,1.0),
                                 ),
                               ),
                               enabledBorder: new OutlineInputBorder(
                                 borderRadius:new BorderRadius.circular(15.0),
                                 borderSide:BorderSide(
                                   width:3.0,
                                   color:Color.fromRGBO(102,255,0,1.0),
                                )
                               ),
                               labelStyle: TextStyle(
                                 fontSize: 15.0,
                                color:Colors.white,
                               )
                               )
                        ),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: <Widget>[
                      //     Padding(padding: EdgeInsets.only(left:20.0)),
                      //     Container(
                      //       height: 40.0,
                      //       width: 300.0,
                      //       child:InkWell(
                      //         child:Text(
                      //           "Professional Details",
                      //           style: TextStyle(
                      //             color:Colors.white,
                      //             fontWeight: FontWeight.w300,
                      //             fontSize:25.0,
                      //             )
                      //         )
                      //       )
                      //     ),
                      //   ],
                      // ),   
                      //new Padding(padding: EdgeInsets.only(top:10.0)),
                      Container(
                            height: 80.0,
                            width:350.0,
                            child: new TextFormField(
                              focusNode: _focusNode4,
                              onTap: _requestFocus4,
                              keyboardType: TextInputType.text,
                              onFieldSubmitted:(v){
                                FocusScope.of(context).requestFocus(_focusNode5);
                              },
                              textInputAction:TextInputAction.next,
                              //initialValue: "Languages",
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize:20.0,
                                color:Colors.white,
                              ),
                              decoration:new InputDecoration(
                               labelText: "Languages",
                               hintText: "The ones you speak!",
                               hintStyle: TextStyle(
                                 color:Colors.white54,
                               ),
                               border: new OutlineInputBorder(
                                 borderRadius:BorderRadius.circular(15.0),
                                 borderSide: BorderSide(
                                   width:3.0,
                                   color: Color.fromRGBO(102,255,0,1.0),
                                 ),
                               ),
                               enabledBorder: new OutlineInputBorder(
                                 borderRadius:new BorderRadius.circular(15.0),
                                 borderSide:BorderSide(
                                   width:3.0,
                                   color:Color.fromRGBO(102,255,0,1.0),
                                )
                               ),
                               labelStyle: TextStyle(
                                 fontSize: 15.0,
                                color:Colors.white,
                               )
                               )
                        ),
                      ),
                      Container(
                            height: 80.0,
                            width:350.0,
                            child: new TextFormField(
                              //maxLines: ,
                              focusNode: _focusNode5,
                              onTap: _requestFocus5,
                              keyboardType: TextInputType.text,
                              onFieldSubmitted:(v){
                                FocusScope.of(context).requestFocus(_focusNode6);
                              },
                              textInputAction:TextInputAction.next,
                              //initialValue: "Languages",
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize:20.0,
                                color:Colors.white,
                              ),
                              decoration:new InputDecoration(
                               labelText: "Tech Stack",
                               //hintText: "The ones you speak!",
                               hintStyle: TextStyle(
                                 color:Colors.white54,
                               ),
                               border: new OutlineInputBorder(
                                 borderRadius:BorderRadius.circular(15.0),
                                 borderSide: BorderSide(
                                   width:3.0,
                                   color: Color.fromRGBO(102,255,0,1.0),
                                 ),
                               ),
                               enabledBorder: new OutlineInputBorder(
                                 borderRadius:new BorderRadius.circular(15.0),
                                 borderSide:BorderSide(
                                   width:3.0,
                                   color:Color.fromRGBO(102,255,0,1.0),
                                )
                               ),
                               labelStyle: TextStyle(
                                 fontSize: 15.0,
                                color:Colors.white,
                               )
                               )
                        ),
                      ),
                      Container(
                            height: 80.0,
                            width:350.0,
                            child: new TextFormField(
                              focusNode: _focusNode6,
                              onTap: _requestFocus6,
                              keyboardType: TextInputType.text,
                              onFieldSubmitted:(v){
                                FocusScope.of(context).requestFocus(_focusNode7);
                              },
                              textInputAction:TextInputAction.next,
                              //initialValue: "Languages",
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize:20.0,
                                color:Colors.white,
                              ),
                              decoration:new InputDecoration(
                               labelText: "Region/Country",
                               hintText: "This helps show relevant updates!",
                               hintStyle: TextStyle(
                                 color:Colors.white54,
                               ),
                               border: new OutlineInputBorder(
                                 borderRadius:BorderRadius.circular(15.0),
                                 borderSide: BorderSide(
                                   width:3.0,
                                   color: Color.fromRGBO(102,255,0,1.0),
                                 ),
                               ),
                               enabledBorder: new OutlineInputBorder(
                                 borderRadius:new BorderRadius.circular(15.0),
                                 borderSide:BorderSide(
                                   width:3.0,
                                   color:Color.fromRGBO(102,255,0,1.0),
                                )
                               ),
                               labelStyle: TextStyle(
                                 fontSize: 15.0,
                                color:Colors.white,
                               )
                               )
                        ),
                      ),
                      Container(
                            height: 80.0,
                            width:350.0,
                            child: new TextFormField(
                              focusNode: _focusNode7,
                              onTap: _requestFocus7,
                              keyboardType: TextInputType.text,
                              onFieldSubmitted:(v){
                                FocusScope.of(context).requestFocus(_focusNode8);
                              },
                              textInputAction:TextInputAction.next,
                              //initialValue: "Languages",
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize:20.0,
                                color:Colors.white,
                              ),
                              decoration:new InputDecoration(
                               labelText: "LinkedIN Username",
                               hintText: "Connect professionally!",
                               hintStyle: TextStyle(
                                 color:Colors.white54,
                               ),
                               border: new OutlineInputBorder(
                                 borderRadius:BorderRadius.circular(15.0),
                                 borderSide: BorderSide(
                                   width:3.0,
                                   color: Color.fromRGBO(102,255,0,1.0),
                                 ),
                               ),
                               enabledBorder: new OutlineInputBorder(
                                 borderRadius:new BorderRadius.circular(15.0),
                                 borderSide:BorderSide(
                                   width:3.0,
                                   color:Color.fromRGBO(102,255,0,1.0),
                                )
                               ),
                               labelStyle: TextStyle(
                                 fontSize: 15.0,
                                color:Colors.white,
                               )
                               )
                        ),
                      ),
                      Container(
                            height: 80.0,
                            width:350.0,
                            child: new TextFormField(
                              
                              focusNode: _focusNode8,
                              onTap: _requestFocus8,
                              keyboardType: TextInputType.text,
                              onFieldSubmitted:(v){
                                FocusScope.of(context).requestFocus(_focusNode9);
                              },
                              textInputAction:TextInputAction.next,
                              //initialValue: "Languages",
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize:20.0,
                                color:Colors.white,
                              ),
                              decoration:new InputDecoration(
                               labelText: "Github Username",
                               hintText: "Let's brag about your work!",
                               hintStyle: TextStyle(
                                 color:Colors.white54,
                               ),
                               border: new OutlineInputBorder(
                                 borderRadius:BorderRadius.circular(15.0),
                                 borderSide: BorderSide(
                                   width:3.0,
                                   color: Color.fromRGBO(102,255,0,1.0),
                                 ),
                               ),
                               enabledBorder: new OutlineInputBorder(
                                 borderRadius:new BorderRadius.circular(15.0),
                                 borderSide:BorderSide(
                                   width:3.0,
                                   color:Color.fromRGBO(102,255,0,1.0),
                                )
                               ),
                               labelStyle: TextStyle(
                                 fontSize: 15.0,
                                color:Colors.white,
                               )
                               )
                        ),
                      ),
                      Container(
                            height: 80.0,
                            width:350.0,
                            child: new TextFormField(
                              focusNode: _focusNode9,
                              onTap: _requestFocus9,
                              keyboardType: TextInputType.text,
                              textInputAction:TextInputAction.done,
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize:20.0,
                                color:Colors.white,
                              ),
                              decoration:new InputDecoration(
                               labelText: "Twitter Username",
                               hintText: "Connect Socially!",
                               hintStyle: TextStyle(
                                 color:Colors.white54,
                               ),
                               border: new OutlineInputBorder(
                                 borderRadius:BorderRadius.circular(15.0),
                                 borderSide: BorderSide(
                                   width:3.0,
                                   color: Color.fromRGBO(102,255,0,1.0),
                                 ),
                               ),
                               enabledBorder: new OutlineInputBorder(
                                 borderRadius:new BorderRadius.circular(15.0),
                                 borderSide:BorderSide(
                                   width:3.0,
                                   color:Color.fromRGBO(102,255,0,1.0),
                                )
                               ),
                               labelStyle: TextStyle(
                                 fontSize: 15.0,
                                color: Colors.white,
                            )
                          )
                        ),
                      ),


                    ],
                  )
                )
              ),
            )
          ]
        ),
      ))],
    ),);
  }
}