import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:galler_app/second_page.dart';



class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image2.jpg',
                  ),
                  fit: BoxFit.cover
                )
              ),
            ),
            Positioned(
              top: 130.0,
              left: -100.0,
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(90/360),
                child: Text(
                  'AliensDev',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 67.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20.0,
              left: 0.0,
              right: 0.0,
              child: Row(
                children: <Widget>[
                  Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context, MaterialPageRoute(builder: (context) => SecondPage())
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.6,
                      padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        border: Border.all(color: Colors.white,width: 2.0)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'View gallery',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Icon(Icons.arrow_forward,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}