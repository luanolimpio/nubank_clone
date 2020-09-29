import 'package:flutter/material.dart';

import 'list_data.dart';

class ListAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<Offset> slideList;

  ListAnimation({@required this.controller})
      : slideList = Tween<Offset>(
                begin: const Offset(1.5, 0.0), end: Offset.zero)
            .animate(
                CurvedAnimation(parent: controller, curve: Curves.bounceInOut));

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideList,
      child: Container(
        height: 110,
        child: ListView(
          padding: EdgeInsets.all(20),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ListData(
              icon: Icons.person_add,
              title: 'Indicar amigos',
            ),
            ListData(
              icon: Icons.phone_android,
              title: 'Recarga de Celular',
            ),
            ListData(
              icon: Icons.chat_bubble_outline,
              title: 'Cobrar',
            ),
            ListData(
              icon: Icons.monetization_on,
              title: 'Depositar',
            ),
            ListData(
              icon: Icons.attach_money,
              title: 'Transferir',
            ),
            ListData(
              icon: Icons.linear_scale,
              title: 'Ajustar limite',
            ),
            ListData(
              icon: Icons.info_outline,
              title: 'Me ajuda',
            ),
            ListData(
              icon: Icons.format_align_center,
              title: 'Pagar',
            ),
            ListData(
              icon: Icons.lock_open,
              title: 'Bloquear cartão',
            ),
            ListData(
              icon: Icons.credit_card,
              title: 'Cartão virtual',
            ),
            ListData(
              icon: Icons.reorder,
              title: 'Organizar atalhos',
            ),
          ],
        ),
      ),
    );
  }
}
