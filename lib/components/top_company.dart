import 'package:flutter/material.dart';

class TopCompanyCircle extends StatelessWidget {
  final IconData icon;
  final String name;
  final String loc;
  final Color color;

  TopCompanyCircle({this.icon, this.name, this.loc, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Card(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                icon,
                color: color,
                size: 50,
              ),
              radius: 50,
            ),
            elevation: 5.0,
            shape: CircleBorder(),
            clipBehavior: Clip.antiAlias,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          Text(
            loc,
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
