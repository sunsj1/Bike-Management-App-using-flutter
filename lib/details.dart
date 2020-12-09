import 'package:flutter/material.dart';


class DetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  DetailsPage({this.heroTag, this.foodName, this.foodPrice});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var selectedCard = 'WEIGHT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color.fromRGBO(224, 13, 13, 0.9),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Details',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18.0,
                  color: Colors.white)),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
              color: Colors.white,
            )
          ],
        ),
        body: ListView(children: [
          Stack(children: [
            Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent),
            Positioned(
                top: 75.0,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.0),
                          topRight: Radius.circular(45.0),
                        ),
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height - 100.0,
                    width: MediaQuery.of(context).size.width)),
            Positioned(
                top: 30.0,
                left: (MediaQuery.of(context).size.width / 2) - 100.0,
                child: Hero(
                    tag: widget.heroTag,
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.heroTag),
                                fit: BoxFit.cover)),
                        height: 220.0,
                        width: 250.0))),
            Positioned(
                top: 250.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.foodName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(widget.foodPrice,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20.0,
                                color: Colors.grey)),
                        Container(height: 25.0, color: Colors.grey, width: 1.0),
                        // Container(
                        //   width: 125.0,
                        //   height: 40.0,
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(17.0),
                        //       color: Color.fromRGBO(224, 13, 13, 0.9),),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //     children: <Widget>[
                        //       // InkWell(
                        //       //   onTap: () {},
                        //       //   child: Container(
                        //       //     height: 25.0,
                        //       //     width: 25.0,
                        //       //     decoration: BoxDecoration(
                        //       //         borderRadius: BorderRadius.circular(7.0),
                        //       //        color: Color.fromRGBO(224, 13, 13, 0.9),),
                        //       //     child: Center(
                        //       //       child: Icon(
                        //       //         Icons.remove,
                        //       //         color: Colors.white,
                        //       //         size: 20.0,
                        //       //       ),
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //       // Text('2',
                        //       //     style: TextStyle(
                        //       //         color: Colors.white,
                        //       //         fontFamily: 'Montserrat',
                        //       //         fontSize: 15.0)),
                        //       // InkWell(
                        //       //   onTap: () {},
                        //       //   child: Container(
                        //       //     height: 25.0,
                        //       //     width: 25.0,
                        //       //     decoration: BoxDecoration(
                        //       //         borderRadius: BorderRadius.circular(7.0),
                        //       //         color: Colors.white),
                        //       //     child: Center(
                        //       //       child: Icon(
                        //       //         Icons.add,
                        //       //        color: Color.fromRGBO(224, 13, 13, 0.9),
                        //       //         size: 20.0,
                        //       //       ),
                        //       //     ),
                        //       //   ),
                        //       // )
                        //     ],
                        //   ),
                        // )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 150.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _buildInfoCard('ENGINE CC', '223', 'cc'),
                          SizedBox(width: 10.0),
                            _buildInfoCard('MAX POWER', '20 bhp ', '@ 8000 rpm'),
                            SizedBox(width: 10.0),
                            _buildInfoCard('MAX TORQUE', '19.7 Nm', '@ 6500 rpm'),
                             SizedBox(width: 10.0),
                            _buildInfoCard('BATTERY', '12v-7Ah', 'MF-Battery'),
                            SizedBox(width: 10.0),
                            _buildInfoCard('GEARS', '5', '_'),
                             SizedBox(width: 10.0),
                            _buildInfoCard('GROUND CLEARANCE', '145', 'MM'),
                             SizedBox(width: 10.0),
                            _buildInfoCard('WHEELBASE', '1360', 'MM'),
                             SizedBox(width: 10.0),
                            _buildInfoCard('LENGTH', '2100', 'MM'),
                             SizedBox(width: 10.0),
                            _buildInfoCard('WIDTH', '805', 'MM'),
                             SizedBox(width: 10.0),
                            _buildInfoCard('HEIGHT', '1190', 'MM')
                        ],
                      )
                    ),
                    SizedBox(height: 20.0),
                      Padding(
                        padding: EdgeInsets.only(bottom:5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0), bottomLeft: Radius.circular(25.0), bottomRight: Radius.circular(25.0)),
                            color: Colors.black
                          ),
                          height: 50.0,
                          child: Center(
                            child: Text(
                              '\₹1,60,000',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat'
                              )
                            ),
                          ),
                        ),
                      )
                  ],
                ))
          ])
        ]));
  }

  Widget _buildInfoCard(String cardTitle, String info, String unit) {
    return InkWell(
      onTap: () {
        selectCard(cardTitle);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: cardTitle == selectedCard ? Color.fromRGBO(224, 13, 13, 0.9) : Colors.white,
          border: Border.all(
            color: cardTitle == selectedCard ? 
            Colors.transparent :
            Colors.grey.withOpacity(0.3),
            style: BorderStyle.solid,
          width: 0.75
          ),
          
        ),
        height: 100.0,
        width: 100.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15.0),
              child: Text(cardTitle,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12.0,
                    color:
                        cardTitle == selectedCard ? Colors.white : Colors.grey.withOpacity(0.7),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(info,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          color: cardTitle == selectedCard
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.bold)),
                  Text(unit,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                        color: cardTitle == selectedCard
                            ? Colors.white
                            : Colors.black,
                      ))
                ],
              ),
            )
          ]
        )
      )
    );
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
