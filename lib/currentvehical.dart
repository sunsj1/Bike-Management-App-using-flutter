import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(left: 15.0),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.red,
                  size: 35.0,
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  'Your Current Vehicle',
                  style: TextStyle(
                    color: Color(0xFF434C68).withOpacity(0.7),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Raleway',
                    letterSpacing: 0.05
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Image.asset('assets/Images/Hammer.png', //fit: BoxFit.cover, 
              height: 195.0, width: MediaQuery.of(context).size.width - 30.0),
              Text('HAMMER',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),
              ),
              Text('2019 - 911 HERO S',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF434C68)
              ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 0.75,
                width: MediaQuery.of(context).size.width - 30.0,
                color: Color(0xFF434C68).withOpacity(0.4),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.departure_board, color: Color(0xFF434C68).withOpacity(0.4)),
                        SizedBox(height: 5.0),
                        Text('29/10/2020',
                        style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      children: <Widget>[
                        Icon(Icons.timer, color: Color(0xFF434C68).withOpacity(0.4)),
                        SizedBox(height: 5.0),
                        Text('2200 KM',
                        style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                        )

                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.speed,
                          color: Color(0xFF434C68).withOpacity(0.4)
                           ),
                        SizedBox(height: 5.0),
                        Text('3100 KM',
                        style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                        )

                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 0.75,
                width: MediaQuery.of(context).size.width - 30.0,
                color: Color(0xFF434C68).withOpacity(0.4),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(Icons.refresh, size: 35.0, color: Color(0xFF434C68).withOpacity(0.4)),
                  SizedBox(width: 10.0),
                  Text('EXCHANGE YOUR VEHICLE',
                  style: TextStyle(
                    color: Color(0xFF434C68).withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    fontFamily: 'Oswald'
                  ),),
                  SizedBox(width: 80.0),
                  Icon(Icons.arrow_forward, size: 35.0, color: Color(0xFF434C68).withOpacity(0.4)),
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.arrow_back_ios, color: Colors.grey, size: 25.0)),
            Tab(icon: Icon(Icons.circle, color: Colors.grey, size: 25.0)),
            Tab(icon: Icon(Icons.crop_square_sharp, color: Colors.black, size: 25.0)),
          ]
        ),
      ),
    );
  }
}
