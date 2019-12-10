import 'package:flutter/material.dart';
import 'package:quiz/sound.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Portugues extends StatefulWidget {
  @override
  _PortuguesState createState() => _PortuguesState();
}

class _PortuguesState extends State<Portugues> {
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
        'questao': 'Qual a grafia correta?',
        'resposta_correta': 'Sintetizar',
        'respostas': [
          "Sintetisar",
          "Cintetizar",
          "Cintetisar",
          "Çintetizar",
          "Çintetisar",
          "Zintetisar",
          "Zintetiçar"
        ]
      },
      {
        'questao': 'Não sabia o ___________ de tanta pressa',
        'resposta_correta': 'Porque',
        'respostas': [
          "Por que",
          "Por quê",
          "Porquê",
          "Nehuma das alternativas",
          "Pois",
          "Porventura",
          "Portanto"
        ]
      },
      {
        'questao': 'Assinale a alternativa que\n\napresenta palavra polissílaba:',
        'resposta_correta': 'desconhecimento',
        'respostas': [
          "nós",
          "casa",
          "mágico",
          "Nehuma das alternativas",
          "lâmpada",
          "pente",
          "hospital"
        ]
      },
      {
        'questao': 'Qual a grafia correta?',
        'resposta_correta': 'Sintetizar',
        'respostas': [
          "Sintetisar",
          "Cintetizar",
          "Cintetisar",
          "Çintetizar",
          "Çintetisar",
          "Zintetisar",
          "Zintetiçar"
        ]
      },
      {
        'questao': 'Qual a grafia correta?',
        'resposta_correta': 'Sintetizar',
        'respostas': [
          "Sintetisar",
          "Cintetizar",
          "Cintetisar",
          "Çintetizar",
          "Çintetisar",
          "Zintetisar",
          "Zintetiçar"
        ]
      },
      {
        'questao': 'Qual a grafia correta?',
        'resposta_correta': 'Sintetizar',
        'respostas': [
          "Sintetisar",
          "Cintetizar",
          "Cintetisar",
          "Çintetizar",
          "Çintetisar",
          "Zintetisar",
          "Zintetiçar"
        ]
      },
      {
        'questao': 'Qual a grafia correta?',
        'resposta_correta': 'Sintetizar',
        'respostas': [
          "Sintetisar",
          "Cintetizar",
          "Cintetisar",
          "Çintetizar",
          "Çintetisar",
          "Zintetisar",
          "Zintetiçar"
        ]
      },
      {
        'questao': 'Qual a grafia correta?',
        'resposta_correta': 'Sintetizar',
        'respostas': [
          "Sintetisar",
          "Cintetizar",
          "Cintetisar",
          "Çintetizar",
          "Çintetisar",
          "Zintetisar",
          "Zintetiçar"
        ]
      },
      {
        'questao': 'Qual a grafia correta?',
        'resposta_correta': 'Sintetizar',
        'respostas': [
          "Sintetisar",
          "Cintetizar",
          "Cintetisar",
          "Çintetizar",
          "Çintetisar",
          "Zintetisar",
          "Zintetiçar"
        ]
      },
      {
        'questao': 'Qual a grafia correta?',
        'resposta_correta': 'Sintetizar',
        'respostas': [
          "Sintetisar",
          "Cintetizar",
          "Cintetisar",
          "Çintetizar",
          "Çintetisar",
          "Zintetisar",
          "Zintetiçar"
        ]
      },
      {
        'questao': 'Qual a grafia correta?',
        'resposta_correta': 'Sintetizar',
        'respostas': [
          "Sintetisar",
          "Cintetizar",
          "Cintetisar",
          "Çintetizar",
          "Çintetisar",
          "Zintetisar",
          "Zintetiçar"
        ]
      },
      {
        'questao': 'Qual a grafia correta?',
        'resposta_correta': 'Sintetizar',
        'respostas': [
          "Sintetisar",
          "Cintetizar",
          "Cintetisar",
          "Çintetizar",
          "Çintetisar",
          "Zintetisar",
          "Zintetiçar"
        ]
      },
      {
        'questao': 'Qual a grafia correta?',
        'resposta_correta': 'Sintetizar',
        'respostas': [
          "Sintetisar",
          "Cintetizar",
          "Cintetisar",
          "Çintetizar",
          "Çintetisar",
          "Zintetisar",
          "Zintetiçar"
        ]
      },
      {
        'questao': 'Qual a grafia correta?',
        'resposta_correta': 'Sintetizar',
        'respostas': [
          "Sintetisar",
          "Cintetizar",
          "Cintetisar",
          "Çintetizar",
          "Çintetisar",
          "Zintetisar",
          "Zintetiçar"
        ]
      },
      {
        'questao': 'Qual a grafia correta?',
        'resposta_correta': 'Sintetizar',
        'respostas': [
          "Sintetisar",
          "Cintetizar",
          "Cintetisar",
          "Çintetizar",
          "Çintetisar",
          "Zintetisar",
          "Zintetiçar"
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

  play() {
    playSuccess();
  }
  verificaQuestao(questao) async {
    if (questao['answer'] == correct) {
      play();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      int score = (prefs.getInt('portugues_score') ?? 0);
      score = score + 10;
      prefs.setInt('portugues_score', score);
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
