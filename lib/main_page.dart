import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottom_bar.dart';

class MainPage extends StatefulWidget {
  String title;
  MainPage({@required this.title});
  @override
  _MainPageState createState() => _MainPageState();
}

enum BottomIcons { Home, Store,Plus, Explore, Profile }

class _MainPageState extends State<MainPage> {
  BottomIcons bottomIcons = BottomIcons.Home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          bottomIcons == BottomIcons.Home
              ? Center(
                  child: Text(
                    "Hi, this is home page",
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : Container(),
          bottomIcons == BottomIcons.Store
              ? Center(
                  child: Text(
                    "Hi, this is Store page",
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : Container(),
          bottomIcons == BottomIcons.Explore
              ? Center(
                  child: Text(
                    "Hi, this is Explore page",
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : Container(),
          bottomIcons == BottomIcons.Profile
              ? Center(
                  child: Text(
                    "Hi, this is Profile page",
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : Container(),
          Positioned(
            top: 400,
              right: 15.0,
              child:
          FloatingActionButton(backgroundColor: Colors.blue,child:Icon( Icons.keyboard_arrow_up_outlined,))),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Home;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Home ? true : false,
                      icons: EvaIcons.home,
                      text: "Home"),

                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Store;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Store ? true : false,
                      icons: Icons.store,
                      text: "Store"),

                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Plus;
                        });
                      },
                      bottomIcons:
                      bottomIcons == BottomIcons.Plus ? true : false,
                      icons: EvaIcons.plus,
                      text: "".trim()),

                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Explore;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Explore ? true : false,
                      icons: EvaIcons.compass,
                      text: "Explore"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Profile;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Profile ? true : false,
                      icons: EvaIcons.personOutline,
                      text: "Profile"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
