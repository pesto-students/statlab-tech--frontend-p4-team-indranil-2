import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return Center(
      child: MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text('Statlab'),
              backgroundColor: Colors.yellowAccent,
            ),
            backgroundColor: Colors.amber,
            body: SafeArea(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/image/playstore.png'),
                  ),
                  Text('Statlab',
                      style: TextStyle(
                          fontSize: 51,
                          color: Colors.red,
                          fontFamily: 'RubikVinyl')),
                  Text('Enter Login Details',
                      style: TextStyle(
                          fontSize: 33,
                          color: Colors.lightGreenAccent,
                          fontFamily: 'RubikSprayPaint')),
                  Card(
                    color: Colors.white70,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(Icons.account_box_outlined,
                          size: 21.0, color: Colors.red),
                      title: TextFormField(
                        decoration:
                        InputDecoration(labelText: 'Please Provide the E-Mail'),
                        keyboardType: TextInputType.emailAddress,
                        //obscureText: true,
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'Pacifico',
                            fontSize: 21.0),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(Icons.key, size: 21.0, color: Colors.red),
                      title: TextFormField(
                        decoration: InputDecoration(labelText: 'Password'),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'Pacifico',
                            fontSize: 21.0),
                      ),
                    ),
                  ),
                  /* Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ButtonTheme(
                        child: InkWell(
                          onTap: (){
                            Random random = new Random();
                             leftDiceNumber = random.nextInt(6);
                          },
                          child: Image(
                            height: 221.0,

                            //width: 301.0,
                            image: AssetImage('assets/images/dice$leftDiceNumber.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ButtonTheme(
                        child: InkWell(
                          onTap: (){
                            Random random = new Random();
                            rightDiceNumber = random.nextInt(6);
                          },
                          child: Image(
                            height: 221.0,

                            //width: 301.0,
                            image: AssetImage('assets/images/dice$rightDiceNumber.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),*/
                  DicePage(),
                  Text('Click on The DICE to LOGIN',
                      style: TextStyle(
                          fontSize: 33,
                          color: Colors.lightGreenAccent,
                          fontFamily: 'RubikSprayPaint')),
                ],
              ),
            ),
          )),
    );
  }


}

class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber =1;
  int rightDiceNumber =2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ButtonTheme(
                child: InkWell(
                  onTap: (){
                    setState(() {
                      Random random = new Random();
                      leftDiceNumber = random.nextInt(5);
                      rightDiceNumber = random.nextInt(5);
                    });
                  },
                  child: Image(
                    height: 199.0,

                    //width: 301.0,
                    image: AssetImage('assets/images/dice$leftDiceNumber.png'),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ButtonTheme(
                child: InkWell(
                  onTap: (){ setState(() {
                    Random random = new Random();
                    leftDiceNumber = random.nextInt(5);
                    rightDiceNumber = random.nextInt(5);
                  });

                  },
                  child: Image(
                    height: 199.0,

                    //width: 301.0,
                    image: AssetImage('assets/images/dice$rightDiceNumber.png'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }
}


/*

 */
