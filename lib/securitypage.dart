//import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:loginui/currentvehical.dart';
//import 'currentvehical.dart';


class Security extends StatefulWidget {
  @override
  _SecurityState createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              
              resizeToAvoidBottomPadding: false,
              appBar: AppBar(
              title: Text('Hero Help Desk',
              style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                  ),
                ),
              backgroundColor:Color.fromRGBO(224, 13, 13, 0.9),
              ),
      body:Container(
        color: Colors.white,
        //color: Color.fromRGBO(224, 13, 13, 0.9),
        child: Stack(
        
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Stack(
                children:<Widget> [
                  Column(
                    children:<Widget> [
                      Padding(
                            padding:EdgeInsets.only(bottom:30.0),
                            child:Image.asset("assets/Images/herologo.png",
                            height: 120,
                            width:140.0,
                            ),
                            ),
                  //        Padding(padding:EdgeInsets.only(
                  //            top:8.0,
                  //           bottom: 8.0,
                  //         ),
                  //         child:MaterialButton(
                  //              padding: EdgeInsets.symmetric(
                  //              vertical: 10.0),
                  //              onPressed: (){
                  //                 Navigator.push(context,MaterialPageRoute(
                  //                     builder: (context) {
                  //                     return Secured();
                  //                      },
                  //                 )
                  //               );
                  //              },
                  //              splashColor: Colors.white,
                  //              color: Colors.white,
                  //              height: 67.0,
                  //              minWidth: 390.0,
                  //              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(26),),
                  //              child: Text(
                  //                "Security",
                  //                style:TextStyle(
                  //                  color: Colors.black,
                  //                  fontFamily: "Raleway",
                  //                  fontSize: 18.0,
                  //                  fontWeight: FontWeight.w700,
                                   

                  //                )

                  //              ),
                               
                  //            ) ,
                  //  ),
                  //   Padding(padding:EdgeInsets.only(
                  //            top:8.0,
                  //           bottom: 8.0,
                  //         ),
                  //         child:MaterialButton(
                  //              padding: EdgeInsets.symmetric(
                  //              vertical: 10.0),
                  //              onPressed: (){},
                  //              splashColor: Colors.white,
                  //              color: Colors.white,
                  //              height: 67.0,
                  //              minWidth: 390.0,
                  //              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(26)),
                  //              child: Text(
                  //                "Verify",
                  //                style:TextStyle(
                  //                  color: Colors.black,
                  //                  fontFamily: "Raleway",
                  //                  fontSize: 18.0,
                  //                  fontWeight: FontWeight.w700,
                                   

                  //                )

                  //              ),
                               
                  //            ) ,
                  //  ),
                  //   Padding(padding:EdgeInsets.only(
                  //            top:8.0,
                  //           bottom: 8.0,
                  //         ),
                  //         child:MaterialButton(
                  //              padding: EdgeInsets.symmetric(
                  //              vertical: 10.0),
                  //              onPressed: (){
                  //                 Navigator.push(context,MaterialPageRoute(
                  //                     builder: (context) {
                  //                     return MyApp();
                  //                      },
                  //                 )
                  //               );
                  //              },
                  //              splashColor: Colors.white,
                  //              color: Colors.white,
                  //              height: 67.0,
                  //              minWidth: 390.0,
                  //              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(26)),
                  //              child: Text(
                  //                "My Vehical",
                  //                style:TextStyle(
                  //                  color: Colors.black,
                  //                  fontFamily: "Raleway",
                  //                  fontSize: 18.0,
                  //                  fontWeight: FontWeight.w700,
                                   

                  //                )

                  //              ),
                               
                  //            ) ,
                  //  ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:<Widget>[
                        Padding(
                          padding: EdgeInsets.all(20),
                          child:Expanded(
                                    child: Container(
                                    height: 65.0,
                                    width: 60.0,
                                    decoration: BoxDecoration(
                                    border: Border.all(
                                          color: Colors.grey,
                                          style: BorderStyle.solid,
                                          width: 1.0),
                                          borderRadius: BorderRadius.circular(10.0),
                                      ),
                                    child: Center(
                                      child:IconButton(
                                        onPressed: (){
                                                Navigator.push(context,MaterialPageRoute(
                                                    builder: (context) {
                                                    return Secured();
                                                    },
                                                )
                                              );
                                            },
                                        icon:Icon(Icons.security, color: Colors.black),
                                        tooltip: 'Bike Security',
                                        ) 
                                    ),
                                  ),
                        ) 
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child:Expanded(
                                    child: Container(
                                    height: 65.0,
                                    width: 60.0,
                                    decoration: BoxDecoration(
                                    border: Border.all(
                                          color: Colors.grey,
                                          style: BorderStyle.solid,
                                          width: 1.0),
                                          borderRadius: BorderRadius.circular(10.0),
                                      ),
                                    child: Center(
                                      child:IconButton(
                                        onPressed: (){
                                                Navigator.push(context,MaterialPageRoute(
                                                    builder: (context) {
                                                    return Security();
                                                    },
                                                )
                                              );
                                            },
                                        icon:Icon(Icons.video_collection, color: Colors.black),
                                        tooltip: 'Help Video',
                                        ) 
                                    ),
                                  ),
                        ) ,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child:Expanded(
                                    child: Container(
                                    height: 65.0,
                                    width: 60.0,
                                    decoration: BoxDecoration(
                                    border: Border.all(
                                          color: Colors.grey,
                                          style: BorderStyle.solid,
                                          width: 1.0),
                                          borderRadius: BorderRadius.circular(10.0),
                                      ),
                                    child: Center(
                                      child:IconButton(
                                        onPressed: (){
                                                Navigator.push(context,MaterialPageRoute(
                                                    builder: (context) {
                                                    return Security();
                                                    },
                                                )
                                              );
                                            },
                                        icon:Icon(Icons.history, color: Colors.black),
                                        tooltip: 'Traval History',
                                        ) 
                                    ),
                                  ),
                        ) ,
                        )
                        
                     ]
                   )
                    ],
                    ),
                   

                    ],
               )
                
            ],
          )
                ],
      ),
      ) 
    );
  }
}

class Secured extends StatefulWidget {
  @override
  _SecuredState createState() => _SecuredState();
}

class _SecuredState extends State<Secured> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light,),
      
      home: Scaffold(
        
        resizeToAvoidBottomPadding: false,
              appBar: AppBar(
              title: Text('Hero Help Desk',
              style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                  ),
                ),
              backgroundColor: Colors.red,
              ),
      body:Container(
        ///color: Color.fromRGBO(224, 13, 13, 0.9),
        
        child: Stack(
        
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Stack(
                children:<Widget> [
                  Column(
                    children:<Widget> [
                      ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            shape: CircleBorder(), primary: Colors.black.withOpacity(0.7)),
                            child: Container(
                              width: 200,
                              height: 200,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: Text(
                                'Secure Bike',
                                style: TextStyle(fontSize: 24,color: Colors.white,fontWeight:FontWeight.w500),
                              ),
                            ),
                            onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(
                                      builder: (context) {
                                      return Securednow();
                                       },
                                  )
                                );
                               },
                            ),
                            Padding(
                              padding:EdgeInsets.all(20),
                              child:Expanded(
                                child:Text(
                                  "Description:- It will notify when anyone try to start your bike With duplicate key or try to break lock then Alarm will buzz and you will get notification. "
                                  ,
                                  style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w300,
                                  ) ,),
                                  ),
                              )
                         
                    ],
                    ),
                   

                    ],
               )
                
            ],
          )
                ],
      ),
      ) 
    ),
     
      );
              
  }
}

class Securednow extends StatefulWidget {
  @override
  _SecurednowState createState() => _SecurednowState();
}

class _SecurednowState extends State<Securednow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light,),
      
      home: Scaffold(
        
        resizeToAvoidBottomPadding: false,
              appBar: AppBar(
              title: Text('Hero Help Desk',
              style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                  ),
                ),
              backgroundColor: Colors.red,
              ),
      body:Container(
        ///color: Color.fromRGBO(224, 13, 13, 0.9),
        
        child: Stack(
        
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Stack(
                children:<Widget> [
                  Column(
                    children:<Widget> [
                      Padding(
                        padding:EdgeInsets.all(20),
                        child:IconButton(
                          onPressed:(){
                     Navigator.pop(context);
                            },
                          splashColor: Colors.black,
                          icon: Icon(Icons.alarm_on_rounded, color: Colors.grey, size: 75.0),
                          
                        ), 
                      ),
                        
                      
                      Padding(
                              padding:EdgeInsets.only(top:20),
                              child:Expanded(
                                child:Text(
                                  'Security Alarm On'
                                  ,
                                  style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 38,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w700,
                                    
                                  ) ,),
                                  ),
                              ),
                      // ElevatedButton(
                      //       style: ElevatedButton.styleFrom(
                      //       shape: CircleBorder(), primary: Colors.green),
                      //       child: Container(
                      //         width: 200,
                      //         height: 200,
                      //         alignment: Alignment.center,
                      //         decoration: BoxDecoration(shape: BoxShape.circle),
                      //         child: Text(
                      //           'Secure Bike',
                      //           style: TextStyle(fontSize: 24,color: Colors.black,fontWeight:FontWeight.w500),
                      //         ),
                      //       ),
                      //       onPressed: (){
                      //              Navigator.pop(context);
                      //          },
                      //       ),
                            Padding(
                              padding:EdgeInsets.all(20),
                              child:Expanded(
                                child:Text(
                                  'Double Tap To Off'
                                  ,
                                  style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w300,
                                  ) ,),
                                  ),
                              )
                         
                    ],
                    ),
                   

                    ],
               )
                
            ],
          )
                ],
      ),
      ) 
    ),
     
      );
  }
}