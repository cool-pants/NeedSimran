

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:project_x/modules/signup/signupUI.dart';
class LoginPageUI extends StatefulWidget {
  @override
  _LoginPageUIState createState() => _LoginPageUIState();
}

class _LoginPageUIState extends State<LoginPageUI> {

  FocusNode _focusNode1;
  FocusNode _focusNode2;
  final GlobalKey<FormState> _formKey1 =GlobalKey<FormState>();
  bool _autoValidate1 =false;
  String _password;
  String _email;
  bool _obscuredText = true;
  // AnimationController _controller;
  // Animation _animation;

  _toggle(){
    setState(() {
      _obscuredText = !_obscuredText;
    });
  }
   
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
    
    return new Scaffold(
    backgroundColor: Colors.black,
    body: new  Stack(
      children: <Widget>[
        new SingleChildScrollView(
            child: new Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Form(
                key: _formKey1,
                autovalidate: true,
                  child:new Theme(
                    data:new ThemeData(
                      primaryColor: Color.fromRGBO(102,255,0,1.0),
                      inputDecorationTheme: new InputDecorationTheme(
                        labelStyle:new TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                           ),
                      )
                    ),
                    child:new Container(
                      padding:const EdgeInsets.only(top:200.0),
                      child:new Column(
                        crossAxisAlignment:CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  new Padding(padding: EdgeInsets.only(left:30.0)),
                                  new TypewriterAnimatedTextKit(
                                    text:["Login Here!"],
                                    speed: Duration(milliseconds: 400),
                                    onTap: (){
                                      print("Tap Event");
                                    },
                                    totalRepeatCount: 1000,
                                    textStyle: TextStyle(
                                      fontSize:40.0,
                                      fontWeight: FontWeight.w400,
                                      color:  Color.fromRGBO(102,255,0,1.0),
                                    ),
                                    textAlign: TextAlign.start,
                                    //alignment: AlignmentDirectional.topStart,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          new Padding(padding: EdgeInsets.only(top:30.0)),
                          Container(
                            height: 100.0,
                            width:350.0,
                            child: new TextFormField(
                              focusNode: _focusNode1,
                              onTap: _requestFocus1,
                              validator: validateEmail,
                              keyboardType: TextInputType.emailAddress,
                              onFieldSubmitted:(v){
                                FocusScope.of(context).requestFocus(_focusNode2);
                              },
                              textInputAction:TextInputAction.next,
                              onSaved: (String val){
                                _email=val;
                              },
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize:20.0,
                                color:Colors.white,
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
                               enabledBorder: new OutlineInputBorder(
                                 borderRadius:new BorderRadius.circular(15.0),
                                 borderSide:BorderSide(
                                   width:3.0,
                                   color:Color.fromRGBO(102,255,0,1.0),
                                )
                               ),
                               labelStyle: TextStyle(
                                 fontSize: 15.0,
                                color:_focusNode1.hasFocus ? Color.fromRGBO(102,255,0,1.0) : Colors.white,
                               )
                               )
                        ),
                      ),
                      Container(
                            width:350,
                            height:100,
                            child: new TextFormField(
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize:20.0,
                                color:Colors.white,
                              ),
                              obscureText: _obscuredText,
                              focusNode: _focusNode2,
                              onTap: _requestFocus2,
                              validator: validatePassword,
                              textInputAction:TextInputAction.done,
                              onSaved: (String val){
                                _password=val;
                              },
                              decoration:new InputDecoration(
                               suffixIcon: IconButton(
                                 icon: _obscuredText
                                 ?Icon(Icons.visibility_off,color: Colors.white,)
                                 :Icon(Icons.visibility,color: Colors.white,),
                                onPressed: _toggle,
                                ),
                               labelText: "Password",
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
                                color:_focusNode2.hasFocus ? Color.fromRGBO(102,255,0,1.0) : Colors.white,
                               )
                               )
                        ),
                      ),
                      new Padding(padding: EdgeInsets.only(top: 20.0)),
                      new MaterialButton(
                        height: 70.0,
                        minWidth:350.0,
                        color: Color.fromRGBO(102,255,0,1.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            side: BorderSide(color: Colors.white10),
                          ),
                        onPressed: _validateInputs,
                        splashColor: Colors.white70,
                        child:new Text(
                            "Sign In",
                            style:new TextStyle(
                              color:Colors.black,
                              fontSize:20.0,
                              fontWeight:FontWeight.w400,
                              letterSpacing:0.3,
                            )
                          ),
                      ),
                      Padding(padding: EdgeInsets.only(top:20.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Dont have an account?",
                            style:TextStyle(
                              fontSize: 20.0,
                              fontWeight:FontWeight.w300,
                              color:Colors.white,
                            )),
                            SizedBox(width:10.0),
                            InkWell(
                              onTap:() {
                                Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (BuildContext context)=> SignUpUI()));
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color.fromRGBO(102,255,0,1.0),
                                  fontWeight: FontWeight.bold)
                              ),
                            )
                        ],
                        ),
                        Padding(padding: EdgeInsets.only(top:20.0)),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            InkWell(
                              onTap:() {
                                Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (BuildContext context)=> SignUpUI()));
                              },
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)
                              ),
                            )
                        ],
                        )

                    
                    ],)
                  ),
                ),
                
              )
            ],
          ),
        )
      ],
    )    
    );
  }
  void _validateInputs(){
    if (_formKey1.currentState.validate()){
      _formKey1.currentState.save();
      setState(() {});
    }
    else {
      setState(() {
        _autoValidate1= true;
      });
    }
  }
}

String validatePassword(String value){
  if(value.length<8)
    return 'Password shouldn\'t be empty';
  else 
    return null;
}

String validateEmail(String value){
  Pattern pattern =
  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex=new RegExp(pattern);
  if(value.length==0){
    return 'Please enter Email';
  }
  else if(!regex.hasMatch(value)){
    return 'Please enter valid Email';
  }
  return null;
}