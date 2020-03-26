import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:investicon/screens/e_saver_screen.dart';
import 'package:investicon/screens/investment_screen.dart';

import 'deposit_screen.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF002B4A),
        body: Container(

          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Hello,',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' BAMI \n',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'We are glad to see you again',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      DashboardAccountCard(cardText: 'Savings Balance', cardText2: 'N80,000.00' ),
                      DashboardAccountCard(cardText: 'Total Investment', cardText2: '10',),
                      DashboardAccountCard(cardText: 'Total Profit', cardText2: 'N250,000.00',),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Services',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: DashboardSmallCard(
                        Ontap: () {
                          Navigator.push(
                              context,
                              EnterExitRoute(
                                  enterPage: InvestmentPage(),
                                  exitPage: Dashboard()));
                        },
                        cardText: 'Invest',
                        cardImage: 'images/investment.png',

                        //cardImage: 'images/investment.png',
                      ),
                    ),
                    Expanded(
                      child: DashboardSmallCard(
                        Ontap: () {
                          Navigator.push(context, _createRoute());
                        },
                        cardText: 'E-Saver',
                        cardImage: 'images/esaver.png',
                      ),
                    ),
                    Expanded(
                      child: DashboardSmallCard(
                        Ontap: () {
                          Navigator.push(context, _createFadeRoute());
                        },
                        cardText: 'Deposit',
                        cardImage: 'images/deposit.png',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: DashboardSmallCard(
                        Ontap: () {
                          Navigator.push(context, _createFadeRoute());
                        },
                        cardText: 'Payout',
                        cardImage: 'images/payout.png',
                      ),
                    ),
                    Expanded(
                      child: DashboardSmallCard(
                        Ontap: () {
                          Navigator.push(context, _createFadeRoute());
                        },
                        cardText: 'Trasaction Logs',
                        cardImage: 'images/Transaction_log.png',
                      ),
                    ),
                    Expanded(
                      child: DashboardSmallCard(
                        Ontap: () {
                          Navigator.push(context, _createFadeRoute());
                        },
                        cardText: 'Settings',
                        cardImage: 'images/setting_bitcoin.png',
                      ),
                    ),
                ]
                ),
                SizedBox(
                  height: 10.0,
                ),

                SizedBox(
                  height: 2.0,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      DashboardListCard(cardText: 'Start A Savings Now',),
                      DashboardListCard(cardText: 'Get Started with Savings',),

                    ],
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Goals and Plans',
                        style: TextStyle(
                          color: Colors.white,

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'See all',
                        style: TextStyle(
                          color: Colors.white,

                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children :<Widget>[
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                  height: 130.0,
                  decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(
                            colors: [Color(0xFFb92b27), Color(0xFF1565C0)],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          )),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             /*Image.asset('images/goal.jpg',
                             width: 100.0,
                                 height: 100.0,),*/
                             RichText(
                               text: TextSpan(
                                 text: 'Set A Goal Today! \n',
                                 style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 22.0,
                                 ),
                                 children: <TextSpan>[
                                   TextSpan(text: 'set a target for House, Car, Clothes...',
                                       style:TextStyle(
                                         fontSize: 16.0,
                                         color: Colors.white54


                                       ),)
                                 ],
                               ),
                             ),

                           ],
                         ),
                ),
                     ),
                   ),
                  ],
                ),



                RaisedButton(
                  child: Text('Scale Animation'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      _createRoute(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DashboardListCard extends StatelessWidget {
  final String cardText;



  DashboardListCard({this.cardText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      width: 250.0,
      margin: EdgeInsets.only(left: 8.0),
      decoration: BoxDecoration(
          //color: Color(0xFF00AAEF),
        color: Color(0xFF0277bd),
          borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Text(
            cardText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardAccountCard extends StatelessWidget {
  final String cardText;
  final String cardText2;


  DashboardAccountCard({this.cardText, this.cardText2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      width: 250.0,
      margin: EdgeInsets.only(left: 8.0),
      decoration: BoxDecoration(
        color: Color(0xFF3f51b5),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            cardText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          Text(
            cardText2,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardSmallCard extends StatelessWidget {
  final String cardText;
  final String cardImage;
  final Function Ontap;

  DashboardSmallCard({this.cardText, this.cardImage, this.Ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Ontap,
      child: Container(
        height: 100.0,
        margin: EdgeInsets.only(left: 8.0, right: 5.0),
        decoration: BoxDecoration(
            //color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(10.0),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              cardImage,
              width: 50.0,
              height: 50.0,
            ),
            //SizedBox(height: 20.0,),
            Text(
              cardText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardMediumCard extends StatelessWidget {
  final String cardText;
  final String cardImage;

  DashboardMediumCard({this.cardText, this.cardImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
     // width: 300.0,
      margin: EdgeInsets.only(left: 8.0, right: 5.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            colors: [Color(0xFF2193b0), Color(0xFF6dd5ed)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            cardText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => DepositPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = 0.0;
      var end = 1.0;
      var curve = Curves.ease;
      //var tween = Tween(begin: begin, end: end);
      //var offsetAnimation = animation.drive(tween);

      // var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      var scaleTween = Tween<double>(begin: begin, end: end).animate(
          CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn));
      return ScaleTransition(
        scale: scaleTween,
        child: child,
      );
    },
  );
}

Route _createFadeRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Esaver(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      /*var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      //var tween = Tween(begin: begin, end: end);

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);*/

      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}

class EnterExitRoute extends PageRouteBuilder {
  final Widget enterPage;
  final Widget exitPage;
  EnterExitRoute({this.exitPage, this.enterPage})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              enterPage,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              Stack(
            children: <Widget>[
              SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(0.0, 0.0),
                  end: Offset(-1.0, 0.0),
                ).animate(animation),
                child: exitPage,
              ),
              SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: enterPage,
              )
            ],
          ),
        );
}

/*
Row(
children: <Widget>[
Expanded(child: DashboardMediumCard(cardText: 'Total profit')),
Expanded(
child: DashboardMediumCard(
cardText: 'Total Investment',
),
)
],
),*/
