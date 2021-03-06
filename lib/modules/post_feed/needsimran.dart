import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:file_picker/file_picker.dart';

class needSimranUI extends StatefulWidget {
  @override
  _needSimranUIState createState() => _needSimranUIState();
}

class _needSimranUIState extends State<needSimranUI> {

  final GlobalKey<FormState> _formKey1 =GlobalKey<FormState>();
  
  FocusNode _focusNode1;
  FocusNode _focusNode2;   
  @override
  void initState(){
    super.initState();
    _focusNode1 =FocusNode();
    _focusNode2 =FocusNode();
    
  }

  
  
  void dispose1(){
    _focusNode1.dispose();
    super.dispose();
  }

  
  void dispose2(){
    _focusNode2.dispose();
    super.dispose();
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      backgroundColor:Color.fromRGBO(35, 43, 43, 1.0) ,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Color.fromRGBO(236, 55, 80,1.0),
          centerTitle:true,
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  LineAwesomeIcons.arrow_left,color: Colors.white,size: 0.0,), 
                  onPressed: (){
                    setState(() {
                      Navigator.of(context).popAndPushNamed('/post');
                    });

                  }),
            ],
          ),
          flexibleSpace:Container(
            margin: EdgeInsets.only(left:20.0,bottom:0.0,right:20.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child:Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top:35.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left:0.0)),
                      Icon(
                        LineAwesomeIcons.slack,
                        color:Colors.white,
                        size:40.0,
                      ),
                      Text(
                        "NeedSimran",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 2.0,
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
                  child: new Column(
                    children:<Widget>[
                     new Form(
                      key: _formKey1,
                      autovalidate: true,
                      child:new Theme(
                        data:new ThemeData(
                        primaryColor: Color.fromRGBO(236, 55, 80,1.0),
                        inputDecorationTheme: new InputDecorationTheme(
                          labelStyle:new TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          ),
                        )
                      ),
                      child:Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top:20.0)),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                            height: 70.0,
                            width:400.0,
                            child: new TextFormField(
                              focusNode: _focusNode1,
                              onTap: _requestFocus1,
                              keyboardType: TextInputType.text,
                              onFieldSubmitted:(v){
                                FocusScope.of(context).requestFocus(_focusNode2);
                              },
                              textInputAction:TextInputAction.next,
                              //onSaved: 
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize:20.0,
                                color:Colors.white,
                              ),
                              decoration:new InputDecoration(
                               hintText: "Enter the title for post here",
                               labelText: "Title",
                               border: new OutlineInputBorder(
                                 borderRadius:BorderRadius.circular(15.0),
                                 borderSide: BorderSide(
                                   width:3.0,
                                   color: Color.fromRGBO(236, 55, 80,1.0),
                                 ),
                               ),
                               enabledBorder: new OutlineInputBorder(
                                 borderRadius:new BorderRadius.circular(15.0),
                                 borderSide:BorderSide(
                                   width:3.0,
                                   color:Color.fromRGBO(236, 55, 80,1.0),
                                )
                               ),
                               hintStyle: TextStyle(
                                 fontSize: 15.0,
                                color:Colors.white54,),
                               labelStyle: TextStyle(
                                 fontSize: 15.0,
                                color:Colors.white,
                               )
                              )
                            ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ConstrainedBox(
                            constraints: new BoxConstraints(
                              minWidth: 400.0,
                              maxWidth: 400.0,
                              minHeight: 400.0,
                              maxHeight: 500.0,
                            ),
                              child: SingleChildScrollView(
                                child: new TextFormField(
                                  focusNode: _focusNode2,
                                  onTap: _requestFocus2,
                                  maxLines: null,
                                  keyboardType: TextInputType.multiline,
                                  // onFieldSubmitted:(v){
                                  //   FocusScope.of(context).requestFocus(_focusNode2);
                                  // },
                                  textInputAction:TextInputAction.none,
                                  //onSaved: 
                                  cursorColor: Colors.white,
                                  style: TextStyle(
                                    fontSize:20.0,
                                    color:Colors.white,
                                  ),
                                  decoration:new InputDecoration(
                                    labelText: "Description",
                                    border: new OutlineInputBorder(
                                     borderRadius:BorderRadius.circular(15.0),
                                     borderSide: BorderSide(
                                       width:3.0,
                                       color: Color.fromRGBO(236, 55, 80,1.0),
                                     ),
                                   ),
                                   enabledBorder: new OutlineInputBorder(
                                     borderRadius:new BorderRadius.circular(15.0),
                                     borderSide:BorderSide(
                                       width:3.0,
                                       color:Color.fromRGBO(236, 55, 80,1.0),
                                    )
                                   ),
                                   labelStyle: TextStyle(
                                      fontSize: 20.0,
                                      color:Colors.white,
                                   )
                                  )
                                ),
                              ),
                            
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top:150.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                        //Padding(padding: EdgeInsets.only(top:25.0)),
                          //  MaterialButton(
                          //   height: 50.0,
                          //   minWidth: 100.0,
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius:new BorderRadius.circular(10.0)
                          //   ),
                          //   color: Color.fromRGBO(236, 55, 80,1.0),
                          //   onPressed:(){},
                          //   child: new Text(
                          //     "Attach Files",
                          //     style:TextStyle(
                          //       color:Colors.white,
                          //       fontSize:25.0,
                          //       fontWeight:FontWeight.w400
                          //     )
                          //     )),
                          MaterialButton(
                            height: 50.0,
                            minWidth: 100.0,
                            shape: RoundedRectangleBorder(
                              borderRadius:new BorderRadius.circular(10.0)
                            ),
                            color: Color.fromRGBO(236, 55, 80,1.0),
                            onPressed: (){
                              setState(() {
                                Navigator.of(context).popAndPushNamed('/post');
                              });},
                            child: new Text(
                              "Cancel",
                              style:TextStyle(
                                color:Colors.white,
                                fontSize:25.0,
                                fontWeight:FontWeight.w400
                              )
                              )),

                              MaterialButton(
                                height: 50.0,
                                minWidth: 100.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius:new BorderRadius.circular(10.0)
                                ),
                                color: Color.fromRGBO(236, 55, 80,1.0),
                               onPressed: (){
                                setState(() {
                                  Navigator.of(context).popAndPushNamed('/post');
                                });},
                                child: new Text(
                                  "Confirm",
                                  style:TextStyle(
                                    color:Colors.white,
                                    fontSize:25.0,
                                    fontWeight:FontWeight.w400
                                  )
                                )
                              ),
                            ]
                          ),
                        ],
                      ),
                    )
                  )
                ]
              ),
            )
          )
        ],
      ),
    );
  }
}