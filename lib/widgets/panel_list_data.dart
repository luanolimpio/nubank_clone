import 'package:flutter/material.dart';

class PanelListData extends StatelessWidget {
  final IconData leadingIcon;
  final String title;

  PanelListData({@required this.leadingIcon, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5,right: 30,left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(leadingIcon, color: Colors.white),
              SizedBox(width: 15),
              Text(title, style: TextStyle(color: Colors.white)),
            ],
          ),
          Icon(Icons.keyboard_arrow_right, color: Colors.white),
        ],
      ),
    );
  }
}
