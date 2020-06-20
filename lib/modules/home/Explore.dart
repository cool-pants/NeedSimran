import 'package:flutter/material.dart';

class ExploreUI extends StatefulWidget {
  ExploreUI({Key key}) : super(key:key);

  @override
  _ExploreUIState createState() => _ExploreUIState();
}

class _ExploreUIState extends State<ExploreUI> 
with SingleTickerProviderStateMixin {

  TabController controller;
  
  @override
  void initState(){
    super.initState();
    controller = TabController(length: 9, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(35, 43, 43, 250),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBar(
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
                        "Explore",
                        style: TextStyle(
                          color: Color.fromRGBO(102,255,0,1.0),
                          fontSize: 26.0,
                          fontWeight: FontWeight.w700,

                        ))]),
                        Padding(padding: EdgeInsets.only(top:25.0)),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 360.0,
                              height: 40.0,
                              padding: EdgeInsets.only(left:5.0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(35,43,43,0.0)
                              ),
                              child: TextField(
                                showCursor: true,
                                //autofocus: true,
                                autocorrect: true,
                                cursorColor: Color(0xFF8E8E93).withOpacity(0.06),
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  hintStyle: TextStyle(
                                    color: Color(0xFFC5CCD6),
                                    fontSize:17,
                                  ),
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color:Color(0xFFC5CCD6),
                                  ),
                                  focusedBorder: new OutlineInputBorder(
                                    borderRadius:BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      width:2.0,
                                      color: Color.fromRGBO(102,255,0,1.0),
                                    ),
                                  ),
                                  enabledBorder: new OutlineInputBorder(
                                  borderRadius:new BorderRadius.circular(10.0),
                                  borderSide:BorderSide(
                                    width:2.0,
                                    color:Colors.white,
                                    )
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal:10.0,
                                    vertical:10.0,
                                  )
                                )
                              )),
                          ],
                        )
                        
                    ],
                  ),
        
              )
            ),
            
            elevation:0.0,
            backgroundColor: Color.fromRGBO(35, 43, 43, 1.0),
            iconTheme: IconThemeData(color:Color(0xFFC5CCD6)),
            bottom: PreferredSize(
              preferredSize: Size(50.0,50.0),
              child: Container(
                child:Container(
                  margin: EdgeInsets.symmetric(horizontal:10.0),
                  child: TabBar(
                    isScrollable: true,
                    controller: controller,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs:<Widget>[
                      Tab(text:"General"),
                      Tab(text: "#NeedSimran"),
                      Tab(text: "#NeedHelp"),
                      Tab(text: "#NeedAdvice"),
                      Tab(text: "#CodeReview"),
                      Tab(text: "#DesignReview"),
                      Tab(text: "#ProjectIdea"),
                      Tab(text: "#Resources"),
                      Tab(text: "#LinkedInReview"),
                      //Tab(text: "#GirlsOnly"),
                    ],
                    indicatorColor: Color.fromRGBO(102,255,0,1.0),
                    unselectedLabelColor: Colors.white,
                    // labelStyle: TextStyle(
                    //   decorationColor: Color.fromRGBO(102,255,0,1.0)
                    //  ),
                    // onTap:(),
                  )
                ),  
              ),
            ),    
          ),
        ),
        // body: TabBarView(
        //   controller: controller,
        //   children: <Widget>[])
        
        );    
  }
}
