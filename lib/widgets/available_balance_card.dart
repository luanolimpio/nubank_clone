import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvailableBalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
      child: Card(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.monetization_on,
                        ),
                        SizedBox(width: 15),
                        Text('Conta',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 17)),
                      ],
                    ),
                    Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey[400],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, bottom: 50),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Saldo disponível',
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 15)),
                      Text('R\$ 1.500,00', style: TextStyle(fontSize: 30)),
                      SizedBox(height: 34),
                      Row(
                        children: <Widget>[
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4))),
                child: Row(
                  children: <Widget>[
                    Flexible(
                        child: Text(
                            'Transferência de R\$ 176,36 feita para Luan Olimpio Maia em 27 ABR')),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
