import 'package:flutter/material.dart';
//import 'shoppage1.dart';
import 'package:loginui/list.dart';
class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomPadding: false,
      body:Container(
        color: Colors.white,
        child: Stack(
        
        fit: StackFit.expand,
        children: <Widget>[
          
          
        //  Image.asset(
        //     'assets/Images/bg.jpg',
        //     fit: BoxFit.cover,
        //     color: Colors.black54,
        //     colorBlendMode: BlendMode.lighten,
        //   ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            //   Padding(
            // padding:EdgeInsets.only(top:10.0,),
            // child:"Hii User".text.xl4.extraBold.green500.make(),

            // ),
              Padding(
               padding:EdgeInsets.only(bottom:30.0),
              child:Image.asset("assets/Images/herologo.png",
              height: 120,
              width:140.0,
              ),
              ),
             
               Stack(
                children:<Widget> [
                  SingleChildScrollView(
                    child:Container(
                    height: 270.0,
                    width: 370.0,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical:30.0,
                    ),
                    decoration: BoxDecoration(
                      color:Colors.white,
                      
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children:<Widget> [
                         Padding(
                           padding: EdgeInsets.symmetric(
                             vertical: 24.0,
                           ),
    
                           
                         ),
                         
                         TextField(
                           
                           autocorrect: false,
                           autofocus: false,
                           
                           style: TextStyle(
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w800,
                             
                             fontSize: 20.0,
                           ),
                           decoration: InputDecoration(
                             hintText: "OTP",
                            enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(25.7),
      ),
                            //  border:InputBorder.none,
                             filled: true,
                             fillColor: Colors.white,
                             contentPadding: EdgeInsets.all(20.0)
                           ),
                         ),
                          Padding(padding:EdgeInsets.only(
                            top:8.0,
                            bottom: 8.0,
                          
                          ),
                         child:Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children:<Widget> [
                            
                              Text(
                               " Resend OTP",
                               style: TextStyle(
                                 color:Colors.black54,
                                 fontSize: 14.0,
                                 fontFamily: "Raleway",
                                 fontWeight: FontWeight.w700,
                               ),
                             ),
                           
                           ],
                         )
                          ),
                         MaterialButton(
                               padding: EdgeInsets.symmetric(
                               vertical: 10.0),
                               onPressed: (){
                                Navigator.push(context,MaterialPageRoute(
                                      builder: (context) {
                                      return MyApp1();
                                       },
                                  )
                                );
                               },
                               splashColor: Colors.white,
                               color:Color.fromRGBO(224, 13, 13, 0.9),
                               height: 47.0,
                               minWidth: 240.0,
                               child: Text(
                                 "Verify",
                                 style:TextStyle(
                                   color: Colors.white,
                                   fontFamily: "Raleway",
                                   fontSize: 18.0,
                                   fontWeight: FontWeight.w700,
                                   fontStyle: FontStyle.italic,

                                 )

                               ),
                               
                             ) ,
                             
                              
 
                       ],
                    )
                  )
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