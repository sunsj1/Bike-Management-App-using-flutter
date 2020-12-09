import 'package:flutter/material.dart';
class Plantlist extends StatefulWidget {
  @override
  _PlantlistState createState() => _PlantlistState();
}

class _PlantlistState extends State<Plantlist> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:<Widget> [
        Container(
          height:340.0,
          child:ListView(
            padding:EdgeInsets.only(left:24.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              getPlantCart('assets/Images/zmr.png', '2,40,000', 'SPORT', 'ZMR'),
              getPlantCart('assets/Images/gamour.png', '1,30,000', 'CLASSIC', 'Glamour'),
              getPlantCart('assets/Images/Hammer.png', '1,60,000', 'CLASSIC', 'Hammer'),
              getPlantCart('assets/Images/hfd.png', '52,000', 'FORMAL', 'HF-Delux'),
              getPlantCart('assets/Images/Hammer.png', '1,60,000', 'CLASSIC', 'Hammer'),
              getPlantCart('assets/Images/Hammer.png', '1,60,000', 'CLASSIC', 'Hammer'),
              getPlantCart('assets/Images/Hammer.png', '1,60,000', 'CLASSIC', 'Hammer'),
            ],
          )
        ),
         
      ],
      
    );
  }
  getPlantCart(String imgpath,String price,String plantType, String plantName){
    return Stack(
      children:<Widget >[
        Container(
           padding: EdgeInsets.all(8.0),
          height:324.0,
          width:224.0,
          child: Container(
           
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.red
            ),
            height: 249.0,
            width: 224.0,
            child: Column(
              children:<Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children:<Widget>[
                        SizedBox(height:10.0),
                        Text(
                          'FROM',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.red
                          ),
                        ),
                        Text(
                          '\₹.' +price,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white
                          ),
                        )
                      ]
                    ),
                    SizedBox(width:10.0)
                  ],
                ),
                Image(
                  image:AssetImage(imgpath),
                  height: 170.0,
                  ),
                  Row(
                    children:<Widget>[
                      SizedBox(width:20.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            plantType,
                            style:TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color:Color(0xFF8AC7A4)
                            )
                          ),
                          Text(
                            plantName,
                            style:TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                              color:Colors.white
                            )
                          )
                        ],
                      )
                    ]
                  ),
                  SizedBox(height: 10.0,)
              ]
            ),
          ),

        )
      ],
      );
  }
  
}