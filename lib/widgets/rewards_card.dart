import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RewardsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
      child: Card(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 25,bottom: 25),
                child: Icon(
                  Icons.card_giftcard,
                ),
              ),
              Text(
                'Nubank Rewards',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(45, 10, 45, 10),
                child: Text(
                  'Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usua.',
                  style: TextStyle(
                      fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 100),
              OutlineButton(
                child: Text('ATIVE O SEU REWARDS',style: TextStyle(fontSize: 12)),
                color: Colors.white,
                textColor: Color.fromRGBO(109, 33, 119, 1.0),
                borderSide: BorderSide(color: Color.fromRGBO(109, 33, 119, 1.0)),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
