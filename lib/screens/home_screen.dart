import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubankclone/widgets/available_balance_card.dart';
import 'package:nubankclone/widgets/card_animation.dart';
import 'package:nubankclone/widgets/dot_animation.dart';
import 'package:nubankclone/widgets/list_animation.dart';
import 'package:nubankclone/widgets/panel_list_data.dart';
import 'package:nubankclone/widgets/rewards_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  double _height = 0;
  IconData _icon = Icons.keyboard_arrow_down;
  PageController _pageController = PageController();
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(109, 33, 119, 1.0),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset('images/nubanklogo.png'),
                    ),
                    SizedBox(width: 10),
                    Text('Luan',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_height == 500) {
                        _height = 0;
                        _icon = Icons.keyboard_arrow_down;
                      } else {
                        _height = 500;
                        _icon = Icons.keyboard_arrow_up;
                      }
                    });
                  },
                  child: Icon(
                    _icon,
                    color: Colors.white60,
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease,
                  height: _height,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(109, 33, 119, 1.0),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset('images/qrcode.png',
                              height: 90,
                              color: Color.fromRGBO(109, 33, 119, 1.0)),
                          margin: EdgeInsets.only(top: 10),
                          color: Colors.white,
                        ),
                        SizedBox(height: 8),
                        RichText(
                          text: TextSpan(
                            text: 'Banco ',
                            children: [
                              TextSpan(
                                  text: '260 - Nu Pagamentos S.A.',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        RichText(
                          text: TextSpan(
                            text: 'Agência ',
                            children: [
                              TextSpan(
                                  text: '0001',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        RichText(
                          text: TextSpan(
                            text: 'Conta ',
                            children: [
                              TextSpan(
                                  text: '12345678-4',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 10),
                          child: Divider(color: Colors.white30, height: 1),
                        ),
                        PanelListData(
                          leadingIcon: Icons.info_outline,
                          title: 'Me ajuda',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 10),
                          child: Divider(color: Colors.white30, height: 1),
                        ),
                        PanelListData(
                          leadingIcon: Icons.person_outline,
                          title: 'Perfil',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 10),
                          child: Divider(color: Colors.white30, height: 1),
                        ),
                        PanelListData(
                          leadingIcon: Icons.monetization_on,
                          title: 'Configurar conta',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 10),
                          child: Divider(color: Colors.white30, height: 1),
                        ),
                        PanelListData(
                          leadingIcon: Icons.credit_card,
                          title: 'Configurar cartão',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 10),
                          child: Divider(color: Colors.white30, height: 1),
                        ),
                        PanelListData(
                          leadingIcon: Icons.business_center,
                          title: 'Pedir conta PJ',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 10),
                          child: Divider(color: Colors.white30, height: 1),
                        ),
                        PanelListData(
                          leadingIcon: Icons.phone_android,
                          title: 'Configurações do app',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 10),
                          child: Divider(color: Colors.white30, height: 1),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: OutlineButton(
                            child: Text('SAIR DA CONTA'),
                            color: Color.fromRGBO(109, 33, 119, 1.0),
                            textColor: Colors.white,
                            borderSide: BorderSide(color: Colors.white30),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 421,
                  child: PageView(
                    controller: _pageController,
                    children: <Widget>[
                      CardAnimation(controller: _animationController),
                      AvailableBalanceCard(),
                      RewardsCard(),
                    ],
                    onPageChanged: (index){
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
                DotAnimation(controller: _animationController,currentIndex: _currentIndex),
                SizedBox(
                  height: 120,
                    child: ListAnimation(controller: _animationController)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
