import 'package:flutter/material.dart';
import 'package:attempet/Src/home_drawer.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(child: HomeMenu()),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Stack(
          children: <Widget>[

            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  AppBar(
                    leading: FlatButton(
                      onPressed: () {
                        _scaffoldKey.currentState.openDrawer();
                      },
                      child: Icon(Icons.menu),
                    ),
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    title: Text(
                      "Taxi App",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: () {},
                        child: Icon(Icons.notifications),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 100, 20, 20),

            )
          ],
        ),
      ),
    );
  }

//  void onPlaceSelected(PlaceItemRes place, bool fromAddress) {}
}
