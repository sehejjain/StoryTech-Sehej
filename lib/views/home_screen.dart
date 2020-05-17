import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:storytechsehej/components/carousel.dart';
import 'package:storytechsehej/components/top_company.dart';
import 'package:storytechsehej/services/size_config.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var verticalVal = displaySafeHeightBlocks(context);
    var horizontalVal = displaySafeWidthBlocks(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFFf5f5f7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFf5f5f7),
        title: Padding(
          padding: const EdgeInsets.only(
            left: 18.0,
          ),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFf5f5f7),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFf5f5f7),
                        blurRadius: 2,
                        spreadRadius: 1)
                  ],
                ),
                width: horizontalVal * 70,
                height: verticalVal * 5,
                child: Container(
                  width: horizontalVal * 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      const Radius.circular(30.0),
                    ),
                  ),
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: new InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.all(10.0),
                      hintStyle: new TextStyle(
                        color: Colors.grey,
                      ),
                      hintText: "Search Job",
                      fillColor: Colors.red,
                      focusColor: Colors.white,
                      hoverColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Icon(
                FontAwesomeIcons.filter,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: verticalVal,
              ),
              Container(
                height: verticalVal * 40,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Featured Jobs',
                              style: GoogleFonts.lato(
                                fontSize: 35,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'SEE ALL',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Carousel(),
                  ],
                ),
              ),
              Container(
                width: 10,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 28.0,
                      right: 28.0,
                    ),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Top Companies',
                              style: GoogleFonts.lato(
                                fontSize: 35,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'SEE ALL',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Table(
                children: [
                  TableRow(children: [
                    TopCompanyCircle(
                      icon: FontAwesomeIcons.amazon,
                      name: 'Amazon',
                      loc: 'Dubai',
                      color: Colors.black,
                    ),
                    TopCompanyCircle(
                      icon: FontAwesomeIcons.weibo,
                      name: 'Weibo',
                      color: Colors.red,
                      loc: 'Remote',
                    ),
                    TopCompanyCircle(
                      icon: FontAwesomeIcons.google,
                      name: 'Google',
                      loc: 'New York',
                      color: Colors.grey,
                    ),
                  ]),
                  TableRow(children: [
                    TopCompanyCircle(
                      icon: FontAwesomeIcons.cubes,
                      name: 'WebBox',
                      color: Colors.greenAccent,
                      loc: 'Dubai',
                    ),
                    TopCompanyCircle(
                      icon: FontAwesomeIcons.cuttlefish,
                      name: 'CinemaFX',
                      loc: 'London',
                      color: Color(0xfff6d1c7),
                    ),
                    TopCompanyCircle(
                      icon: FontAwesomeIcons.windows,
                      name: 'Microsoft',
                      loc: 'Bengaluru',
                      color: Colors.blueGrey,
                    ),
                  ]),
                  TableRow(children: [
                    TopCompanyCircle(
                      icon: FontAwesomeIcons.apple,
                      name: 'Apple',
                      loc: 'LA',
                      color: Colors.black54,
                    ),
                    TopCompanyCircle(
                      icon: FontAwesomeIcons.staylinked,
                      name: 'StayLinked',
                      loc: 'Prague',
                      color: Colors.orange,
                    ),
                    TopCompanyCircle(
                      icon: FontAwesomeIcons.linkedinIn,
                      name: 'Linkedin',
                      color: Colors.blue,
                      loc: 'NYC',
                    ),
                  ]),
                  TableRow(children: [
                    TopCompanyCircle(
                      icon: FontAwesomeIcons.pinterestP,
                      name: 'Pintrest',
                      loc: 'NYC',
                      color: Colors.red,
                    ),
                    TopCompanyCircle(
                      icon: FontAwesomeIcons.adobe,
                      name: 'Adobe',
                      loc: 'San Fransico',
                      color: Colors.red,
                    ),
                    TopCompanyCircle(
                      icon: FontAwesomeIcons.adversal,
                      name: 'Adversal',
                      loc: 'Dubai',
                      color: Colors.blueGrey,
                    ),
                  ]),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              title: Text('Personal')),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.shoppingBag,
                size: 20,
                color: Colors.black,
              ),
              title: Text('Personal')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: Colors.black,
              ),
              title: Text('Text')),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.commentAlt,
                color: Colors.black,
                size: 20,
              ),
              title: Text('Personal')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: Text('Personal')),
        ],
      ),
    );
  }
}
