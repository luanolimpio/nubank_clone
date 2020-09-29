import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<Offset> slideCard;

  CardAnimation({@required this.controller})
      : slideCard = Tween<Offset>(
                begin: const Offset(1.5, 0.0), end: Offset.zero)
            .animate(
                CurvedAnimation(parent: controller, curve: Curves.bounceInOut));

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideCard,
      child: Container(
//        height: 421,
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Card(
          child: Container(
            decoration: BoxDecoration(
                gradient: new LinearGradient(
                    stops: [0.02, 0.02],
                    colors: [Colors.lightGreen, Colors.white],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft),
                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.credit_card,
                      ),
                      SizedBox(width: 15),
                      Text('Cartão de crédito',
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 17)),
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
                        Text('FATURA ATUAL',
                            style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        Text('R\$ 0,00',
                            style: TextStyle(color: Colors.cyan, fontSize: 30,fontWeight: FontWeight.w500)),
                        SizedBox(height: 10),
                        Row(
                          children: <Widget>[
                            Text('Limite disponível',
                                style: TextStyle(fontSize: 15)),
                            SizedBox(width: 5),
                            Text('R\$ 1.500,00',
                                style: TextStyle(
                                    color: Colors.lightGreen, fontSize: 15,fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6),
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
                              'Aguardando a sua primeira compra com o cartão')),
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
      ),
    );
  }
}
