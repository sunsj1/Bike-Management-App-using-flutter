import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Velocitydemo extends StatefulWidget {
  @override
  _VelocitydemoState createState() => _VelocitydemoState();
}

class _VelocitydemoState extends State<Velocitydemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VxTimeline(
        lineColor:Colors.blue,
        animationDuration: 8.seconds,
        timelineList: List.generate(7, (index) => VxTimelineModel(
        id:index,
         heading:"nov 4 2020", 
         description:"welcome to Vx",
         
         )
         ),
  
      )
          
    );
  }
}