import 'package:flutter/material.dart';
import 'package:quiz/sound.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Matematica extends StatefulWidget {
  @override
  _MatematicaState createState() => _MatematicaState();
}

class _MatematicaState extends State<Matematica> {
  var question;
  var correct;
  var answers;

  var errorColor = Colors.red;
  var successColor = Colors.green;
  var nilColor = Colors.grey;

  bool answered = false;

  @override
  void initState() {
    super.initState();
    var list = [
      {
        'questao': '2+2?',
        'resposta_correta': '4',
        'respostas': [
          "5",
          "3",
          "22",
          "6",
          "9",
          "12",
          "7"
        ]
      },
      {
        'questao': '6/2?',
        'resposta_correta': '3',
        'respostas': [
          "2",
          "4",
          "1",
          "Nehuma das alternativas",
          "5",
          "6",
          "0"
        ]
      },
      {
        'questao': 'Quanto é 2 elevado a 4?',
        'resposta_correta': '16',
        'respostas': [
          "20",
          "8",
          "2",
          "Nehuma das alternativas",
          "10",
          "16",
          "4"
        ]
      },
      {
        'questao': '10-7?',
        'resposta_correta': '3',
        'respostas': [
          "4",
          "17",
          "12",
          "5",
          "4",
          "2",
          "0"
        ]
      },
      {
        'questao': 'Qual é a raiz quadrada de 9?',
        'resposta_correta': '3',
        'respostas': [
          "27",
          "81",
          "5",
          "6",
          "9",
          "4",
          "2"
        ]
      },
      {
        'questao': '9x9?',
        'resposta_correta': '81',
        'respostas': [
          "72",
          "84",
          "99",
          "999",
          "61",
          "79",
          "80"
        ]
      },
      {
        'questao': 'João tinha 8 laranjas,\n\ncomeu 3 com quantas\n\nJoão ficou?',
        'resposta_correta': '5',
        'respostas': [
          "3",
          "6",
          "8",
          "4",
          "1",
          "2",
          "7"
        ]
      },
      {
        'questao': '(3-2)+5x4?',
        'resposta_correta': '21',
        'respostas': [
          "24",
          "20",
          "19",
          "26",
          "27",
          "12",
          "15"
        ]
      },
      {
        'questao': '2x = 3x, qual o valor de x?',
        'resposta_correta': '0',
        'respostas': [
          "1",
          "2",
          "3",
          "4",
          "6",
          "7",
          "8"
        ]
      },
      {
        'questao': '2+5+8-4/2 = ',
        'resposta_correta': '13',
        'respostas': [
          "14",
          "6.5",
          "16",
          "7",
          "15",
          "18",
          "8"
        ]
      },
      {
        'questao': '1+1?',
        'resposta_correta': '2',
        'respostas': [
          "1",
          "3",
          "4",
          "5",
          "7",
          "0",
          "11"
        ]
      },
      {
        'questao': '7-2?',
        'resposta_correta': '5',
        'respostas': [
          "4",
          "3",
          "5",
          "7",
          "2",
          "0",
          "Nenhuma"
        ]
      },
      {
        'questao': '15-4?',
        'resposta_correta': '11',
        'respostas': [
          "10",
          "14",
          "12",
          "9",
          "0",
          "10",
          "Nenhuma"
        ]
      },
      {
        'questao': '99+1?',
        'resposta_correta': '100',
        'respostas': [
          "991",
          "101",
          "990",
          "99",
          "89",
          "0",
          "Nenhuma"
        ]
      },
      {
        'questao': '3 elevado a 3?',
        'resposta_correta': '27',
        'respostas': [
          "9",
          "75",
          "15",
          "34",
          "22",
          "18",
          "16"
        ]
      }
    ];
    list.shuffle();
    List respostas = list[0]["respostas"];
    respostas.shuffle();
    print(list[0]);
    print(respostas);
    var listen = [
      {'answer': list[0]['resposta_correta'], 'color': Colors.grey},
      {'answer': respostas[0], 'color': Colors.grey},
      {'answer': respostas[1], 'color': Colors.grey},
      {'answer': respostas[2], 'color': Colors.grey}
    ];
    listen.shuffle();
    print(listen);
    answers = listen;
    correct = list[0]['resposta_correta'];
    question = list[0]['questao'];
  }

  verificaQuestao(questao) async {
    if (questao['answer'] == correct) {
      playSuccess();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      int score = (prefs.getInt('matematica_score') ?? 0);
      score = score + 10;
      prefs.setInt('matematica_score', score);
      print('Parabéns, você acertou! +10');
      setState(() {
        questao['color'] = Colors.green;
        answered = true;
      });
    } else {
      playError();
      print('Que pena, você errou, tente novamente!');
      setState(() {
        questao['color'] = Colors.red;
        answered = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(question, style: TextStyle(fontSize: 20),),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RaisedButton(
                        color: answers[0]['color'],
                        onPressed: answered
                            ? (){}
                            : () {
                                verificaQuestao(answers[0]);
                              },
                        child: Text(answers[0]['answer'],
                            style: TextStyle(fontSize: 20)),
                      ),
                      RaisedButton(
                        color: answers[1]['color'],
                        onPressed: answered
                            ? (){}
                            : () {
                                verificaQuestao(answers[1]);
                              },
                        child: Text(answers[1]['answer'],
                            style: TextStyle(fontSize: 20)),
                      ),
                      RaisedButton(
                        color: answers[2]['color'],
                        onPressed: answered
                            ? (){}
                            : () {
                                verificaQuestao(answers[2]);
                              },
                        child: Text(answers[2]['answer'],
                            style: TextStyle(fontSize: 20)),
                      ),
                      RaisedButton(
                        color: answers[3]['color'],
                        onPressed: answered
                            ? (){}
                            : () {
                                verificaQuestao(answers[3]);
                              },
                        child: Text(answers[3]['answer'],
                            style: TextStyle(fontSize: 20)),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Image(image: AssetImage('assets/interroga.png')))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
