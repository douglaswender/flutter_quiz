import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Score extends StatefulWidget {
  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  var porScore, matScore, fisScore, quiScore;
  @override
  void initState() {
    super.initState();
    getScores();
  }

  getScores() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      porScore = prefs.getInt('portugues_score');
      if (porScore == null) {
        porScore = 0;
      }
      matScore = prefs.getInt('matematica_score');
      if (matScore == null) {
        matScore = 0;
      }
      fisScore = prefs.getInt('fisica_score');
      if (fisScore == null) {
        fisScore = 0;
      }
      quiScore = prefs.getInt('quimica_score');
      if (quiScore == null) {
        quiScore = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Center(
                  child: Text(
                'Pontuação',
                style: TextStyle(fontSize: 20),
              )),
            ),
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text('Portugues: '),
                        subtitle: Text(porScore.toString()),
                      ),
                      ListTile(
                        title: Text('Matemática: '),
                        subtitle: Text(matScore.toString()),
                      ),
                      ListTile(
                        title: Text('Física: '),
                        subtitle: Text(fisScore.toString()),
                      ),
                      ListTile(
                        title: Text('Química: '),
                        subtitle: Text(quiScore.toString()),
                      ),
                    ],
                  ),
                ),
                Image(
                  image: AssetImage('assets/score.gif'),
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.3,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
