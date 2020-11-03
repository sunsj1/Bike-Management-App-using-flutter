import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          
         Image.asset(
            'assets/Images/bg.jpg',
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.lighten,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
               padding:EdgeInsets.only(bottom:30.0),
              child:Image.asset("assets/Images/farmo.png",
              height: 120,
              width:140.0,
              ),
              ),
             
               Stack(
                children:<Widget> [
                  SingleChildScrollView(
                    child:Container(
                    height: 310.0,
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
    
                           child:TextField(
                           autocorrect: false,
                           autofocus: false,
                           style: TextStyle(
                             fontSize: 20.0,
                           ),
                           decoration: InputDecoration(
                             hintText: "Username",
                             border:InputBorder.none,
                             filled: true,
                             fillColor: Colors.grey[240],
                             contentPadding: EdgeInsets.all(20.0)
                           ),
                         ),

                         ),
                         
                         TextField(
                           
                           autocorrect: false,
                           autofocus: false,
                           obscureText: true,
                           style: TextStyle(
                             fontSize: 20.0,
                           ),
                           decoration: InputDecoration(
                             hintText: "Password",
                             border:InputBorder.none,
                             filled: true,
                             fillColor: Colors.grey[240],
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
                               "Forgot Password ?",
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
                               onPressed: (){},
                               splashColor: Colors.white,
                               color: Colors.red,
                               height: 47.0,
                               minWidth: 240.0,
                               child: Text(
                                 "Login",
                                 style:TextStyle(
                                   color: Colors.white,
                                   fontFamily: "Raleway",
                                   fontWeight: FontWeight.w500,
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
    );
  }
}
