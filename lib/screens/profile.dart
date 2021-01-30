import 'package:decentagram/helper/dimensions.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var vpH = getViewportHeight(context);
    var vpW = getViewportWidth(context);
    return Scaffold(
      body: SafeArea(
        child:CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: vpH*0.52,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              title: Text('FilledStacks',style: TextStyle(fontSize:vpH*0.02),),
              background:Container(
                color: Colors.white,
                child:Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:  AssetImage('assets/images/dp.jpeg'),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Container(
                      width: double.infinity,
                      height: vpH*0.2,
                      child: Container(
                        alignment: Alignment(0.0,1.8),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/dp.jpeg'),
                          radius: 40.0,
                        ),
                      ),
                      ),
                    ),
                  SizedBox(
                    height: vpH*0.05,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: vpW*0.05),
                    child: Column(
                      children: <Widget>[
                        Text("Name",
                          style: TextStyle(
                            fontSize: 25.0,
                            color:Colors.black45,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "@UserId",
                          style: TextStyle(
                            fontSize: 18.0,
                            color:Colors.grey,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                        child:
                          Text(
                            "App Developer at XYZ Company.App Developer at XYZ Company.App Developer at XYZ Company.App Developer at XYZ Company.App Developer at XYZ Company",
                            style: TextStyle(
                              fontSize: 15.0,
                              color:Colors.black45,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: vpH*0.005,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("15 ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: vpH*0.02,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(" Following",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: vpH*0.02,
                                fontWeight: FontWeight.normal
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("15 ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: vpH*0.02,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(" Followers",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: vpH*0.02,
                                fontWeight: FontWeight.normal
                              ),
                            ),
                          ],
                        ), 
                      ],
                    ),
                  ),],
            ),),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: List<int>.generate(6, (index) => index)
                  .map((index) => Container(
                        height: 40,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        color: Colors.grey[300],
                        alignment: Alignment.center,
                        child: Text('$index item'),
                      ))
                  .toList(),
            ),
          ),
        ],
        
      ),
       
      )
    );
  
  }
}