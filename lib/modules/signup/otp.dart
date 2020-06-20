import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class otpUI extends StatefulWidget {
  @override
  _otpUIState createState() => _otpUIState();
}

class _otpUIState extends State<otpUI> {

  String _otp='';
  FocusNode _focusNode1;
  final GlobalKey<FormState> _formKey1 =GlobalKey<FormState>();
  bool _autoValidate1 =false;

  @override
  void initState(){
    _focusNode1=FocusNode();
  }
  
  void dispose1(){
    _focusNode1.dispose();
    super.dispose();
  }
  void _requestFocus1(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode1);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: new Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new Form(
                  key: _formKey1,
                  autovalidate: true,
                  child: new Theme(
                    data:new ThemeData(
                      primaryColor: Color.fromRGBO(102,255,0,1.0),
                      inputDecorationTheme: new InputDecorationTheme(
                        labelStyle:new TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                        ),
                      )
                    ),
                    child: new Container(
                      padding: const EdgeInsets.only(top:200.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          //new Padding(padding: EdgeInsets.only(left:30.0)),
                          new TypewriterAnimatedTextKit(
                            text: ["Enter your OTP here!"],
                            speed: Duration(milliseconds: 400),
                            onTap: (){
                              print("Tap Event");
                            },
                            totalRepeatCount: 1000,
                            textStyle: TextStyle(
                              fontSize:40.0,
                              fontWeight: FontWeight.w400,
                              color:Color.fromRGBO(102, 255, 0, 1.0),
                            ),
                            textAlign: TextAlign.start,
                            ),
                            new Padding(padding: EdgeInsets.only(top:30.0)),
                            Row(
                              children: <Widget>[
                                new Padding(padding: EdgeInsets.only(left:30.0)),
                                Container(
                                height: 100.0,
                                width:350.0,
                                child: new TextFormField(
                                  autofocus: true,
                                  //autovalidate: _autoValidate1,
                                  focusNode: _focusNode1,
                                  onTap: _requestFocus1,
                                  validator: validateOTP,
                                  keyboardType: TextInputType.numberWithOptions(),
                                  textInputAction:TextInputAction.next,
                                  onSaved: (String val){
                                    _otp=val;
                                  },
                                  cursorColor: Colors.white,
                                  style: TextStyle(
                                    fontSize:20.0,
                                    color:Colors.white,
                                  ),
                                  decoration:new InputDecoration(
                                   labelText: "One-Time Password",
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
                                  ),
                                ),
                          ),
                              ],
                            ),
                        Row(
                          children: <Widget>[
                            new Padding(padding: EdgeInsets.only(left:30.0)),
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
                                "Submit",
                                style:new TextStyle(
                                  color:Colors.black,
                                  fontSize:20.0,
                                  fontWeight:FontWeight.w400,
                                  letterSpacing:0.3,
                                )
                              ),
                      ),
                          ],
                        ),


                        ],
                      ),
                    ),    
                  )
                )
              ],
            ), 
          )
        ],
      ), 
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

String validateOTP(String value){
  if(value.length<4 )
    return 'OTP should be greater than 4 digits';
  else 
    return null;
}