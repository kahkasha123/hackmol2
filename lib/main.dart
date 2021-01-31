import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Decentagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue,
      primaryColorBrightness: Brightness.light,
      visualDensity:VisualDensity.adaptivePlatformDensity
      ),
      home: MyHomePage(title: 'Decentagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final myAddress = "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4";

  
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
   
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundImage:AssetImage('assets/images/dp.jpeg'),
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
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildBottomIconButton(Icons.home, Colors.blue),
            buildBottomIconButton(Icons.search, Colors.black45),
            buildBottomIconButton(Icons.notifications, Colors.black45),
            buildBottomIconButton(Icons.mail_outline, Colors.black45),
          ],
        ),
      ),
    );
  }
}
