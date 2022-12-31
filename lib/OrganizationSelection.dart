import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: QuizPage(),
              ),
            ),
          ),
        ));
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [

  ];

  /*Here _MyColor is a class like -

  class _MyColor {
  const _MyColor(this.color, this.name);

  final Color color;
  final String name;
  }*/

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'What kind of Organizational or Type of data is there ?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ButtonTheme(
              child: Material(
                color: Colors.purple[900],
                child: InkWell(
                    onTap: () {
                      setState(() {
                        scoreKeeper.add(
                          Icon(Icons.key, color: Colors.purple[900],),
                        );
                      });

                    },
                    child: Text('Stock trading applications',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ))),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ButtonTheme(
              child: Material(
                color: Colors.indigo[400],
                child: InkWell(
                    onTap: () { setState(() {
                      scoreKeeper.add(
                        Icon(Icons.key, color: Colors.indigo[400],),
                      );
                    });},
                    child: Text('Banking',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ))),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ButtonTheme(
              child: Material(
                color: Colors.blue[900],
                child: InkWell(
                    onTap: () { setState(() {
                      scoreKeeper.add(
                        Icon(Icons.key, color: Colors.blue[900],),
                      );
                    });},
                    child: Text('Hotel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ))),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ButtonTheme(
              child: Material(
                color: Colors.green,
                child: InkWell(
                    onTap: () { setState(() {
                      scoreKeeper.add(
                        Icon(Icons.key, color: Colors.green,),
                      );
                    });},
                    child: Text('Grocery Store',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ))),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ButtonTheme(
              child: Material(
                color: Colors.yellow[900],
                child: InkWell(
                    onTap: () { setState(() {
                      scoreKeeper.add(
                        Icon(Icons.key, color: Colors.yellow[900],),
                      );
                    });},
                    child: Text('Hospital',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ))),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ButtonTheme(
              child: Material(
                color: Colors.orange[900],
                child: InkWell(
                    onTap: () { setState(() {
                      scoreKeeper.add(
                        Icon(Icons.key, color: Colors.orange[900],),
                      );
                    });},
                    child: Text('Media and Entertainment Industry',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ))),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ButtonTheme(
              child: Material(
                color: Colors.red[900],
                child: InkWell(
                    onTap: () { setState(() {
                      scoreKeeper.add(
                        Icon(Icons.key, color: Colors.red[900],),
                      );
                    });},
                    child: Text('Weather Patterns',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ))),
              ),
            ),
          ),
        ),
        IconButton(
          iconSize: 72,
          icon: const Icon(Icons.arrow_forward),
          onPressed: () {
            // ...
          },
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
