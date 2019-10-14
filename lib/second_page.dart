import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/fashion4.jpg'),
              fit: BoxFit.cover
            ),
          ),
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: prefix0.ImageFilter.blur(
                      sigmaX: 5,
                      sigmaY: 5,
                    ),
                    child: Container(
                      color : Colors.white10,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                         Text(
                           'ATHENA',
                           style: TextStyle(
                             letterSpacing: 5.0,
                             fontSize: 22.0,
                             color: Colors.white,
                             fontWeight: FontWeight.bold
                           ),
                         ),
                        Text(
                          'SKIP',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Shop\nmost modern\nessentials',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 37.0,
                            color: Colors.white
                          ),
                        ),
                        Icon(Icons.arrow_forward,color: Colors.white,)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          width: 20.0,
                          height: 4.0,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}