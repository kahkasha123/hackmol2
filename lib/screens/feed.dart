import 'package:decentagram/helper/dimensions.dart';
import 'package:decentagram/screens/profile.dart';
import 'package:decentagram/widgets/feed_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  Widget buildBottomIconButton(IconData icon,Color color)
  {
    return IconButton(
      icon:Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
   
    var vpH = getViewportHeight(context);
    var vpW = getViewportWidth(context);
    
    return SafeArea(
      child:Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child:CircleAvatar(
              backgroundImage:AssetImage('assets/images/dp.jpeg'),
            ),
            
          ),
        ),
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontWeight:FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
         physics: BouncingScrollPhysics(),
        child: Container(
                width: vpW,
                child: true
                    ? ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return 
                            FeedCards();
                          
                        },
                      )
                    : Center(
                        child: Text('No Upcoming Events Yet!'),
                      ),
              ),
        
          ),
          
        
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildBottomIconButton(Icons.home, Colors.green),
            buildBottomIconButton(Icons.search, Colors.black45),
            buildBottomIconButton(Icons.notifications, Colors.black45),
            buildBottomIconButton(Icons.mail_outline, Colors.black45),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {},
      ),
      
      ),
      );
  }
}
