import 'package:flutter/material.dart';
import 'package:loginui/otp.dart';
//import 'shoppage1.dart';

// import 'package:otp_text_field/otp_field.dart';
// import 'package:otp_text_field/style.dart';
//import 'package:velocity_x/velocity_x.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      color:Color.fromRGBO(224, 13, 13, 0.9),
                      
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
                             hintText: "Mobile No",
                            enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
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
                            
                            //   Text(
                            //    "Forgot Password ?",
                            //    style: TextStyle(
                            //      color:Colors.black54,
                            //      fontSize: 14.0,
                            //      fontFamily: "Raleway",
                            //      fontWeight: FontWeight.w700,
                            //    ),
                            //  ),
                           
                           ],
                         )
                          ),
                         Padding(
                  padding:EdgeInsets.only(
                    right: 10.0,
                  ),
                  child: FloatingActionButton(
                  
                  onPressed: (){
                                Navigator.push(context,MaterialPageRoute(
                                      builder: (context) {
                                      return Otp();
                                       },
                                  )
                                );
                               },
                  backgroundColor: Colors.white,
                  
                  splashColor: Colors.black54,
                  elevation: 0.0,
                  child: Icon(Icons.navigate_next,color: Colors.black,size: 37.0,),
                   ) ,
                  ) 
                             
                              
 
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
