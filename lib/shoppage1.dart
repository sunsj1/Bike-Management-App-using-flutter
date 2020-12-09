import 'package:flutter/material.dart';
import 'package:loginui/plantslist.dart';
import 'securitypage.dart';
class Shop1 extends StatefulWidget {
  @override
  _Shop1State createState() => _Shop1State();
}

class _Shop1State extends State<Shop1> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    tabController=TabController(vsync: this,length: 4);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height:18.0,),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[
                
                IconButton(
                  icon:Icon(Icons.menu),
                  onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(
                                      builder: (context) {
                                      return Security();
                                       },
                                  )
                                );
                               },
                ),
                Padding(
                  padding:EdgeInsets.only(
                    right: 10.0,
                  ),
                  child: FloatingActionButton(
                  
                  onPressed:(){
                     Navigator.pop(context);
                  },
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  mini: true,
                  splashColor: Colors.black54,
                  elevation: 0.0,
                  child: Icon(Icons.logout,color: Colors.black,size: 17.0,),
                   ) ,
                  )
               
              ]
            ),
          ),
          Padding(
            padding:const EdgeInsets.all(14.0),
            child: Text('Top  Bikes',
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 40.0,
              fontWeight: FontWeight.w300,

            ),
            ),
             ),
             Padding(
               padding:EdgeInsets.only(left:14.0),
               child: TabBar(
                 controller: tabController,
                 indicatorColor: Colors.transparent,
                 labelColor: Colors.black,
                 unselectedLabelColor: Colors.red.withOpacity(0.4),
                 isScrollable: true,
                 tabs:<Widget> [
                   
                   Tab(
                     child:Text(
                       'Top',
                       style: TextStyle(
                         fontSize: 24.0,
                         fontFamily: 'Raleway',
                         fontWeight: FontWeight.w500,
                       ),
                     )
                   ),
                   Tab(
                     child:Text(
                       'SPORT',
                       style: TextStyle(
                         fontSize: 24.0,
                         fontFamily: 'Raleway',
                         fontWeight: FontWeight.w700,
                       ),
                     )
                   ),
                   Tab(
                     child:Text(
                       'CLASSIC',
                       style: TextStyle(
                         fontSize: 24.0,
                         fontFamily: 'Raleway',
                         fontWeight: FontWeight.w700,
                       ),
                     )
                   ),
                   Tab(
                     child:Text(
                       'FORMAL',
                       style: TextStyle(
                         fontSize: 24.0,
                         fontFamily: 'Raleway',
                         fontWeight: FontWeight.w700,
                       ),
                     )
                   )

                 ],
               ),
               ),
               Container(
                 height:MediaQuery.of(context).size.height - 200.0,
                 child:TabBarView(
                   controller: tabController,
                   children: <Widget>[
                     Plantlist(),
                     Plantlist(),
                     Plantlist(),
                     Plantlist()
                   ],
                 ) ,
               ),
               
        ],
      ),
      
    );
  }
}