import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  final IconData icon;
  final String title;

  ListData({@required this.icon, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white12,
      ),
      width: 85,
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(icon,color: Colors.white,size: 20),
            SizedBox(height: 10),
            Flexible(child: Text(title,style: TextStyle(color: Colors.white,fontSize: 13))),
          ],
        ),
      ),
    );
  }
}
