import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Image.asset('assets/splash.png'),
                  ),
                  Text(
                    'Selecione uma categoria',
                    style: TextStyle(fontSize: 24),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/lol.png'),
                                fit: BoxFit.fill)),
                        width: 120,
                        height: 70,
                        child: ConstrainedBox(
                          child: FlatButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, '/main'),
                            child: Container(),
                          ),
                          constraints: BoxConstraints.expand(),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/cs.png'),
                                fit: BoxFit.fill)),
                        width: 100,
                        height: 50,
                        child: ConstrainedBox(
                          child: FlatButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, '/main'),
                            child: Container(),
                          ),
                          constraints: BoxConstraints.expand(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/dota.png'),
                                fit: BoxFit.fill)),
                        width: 100,
                        height: 100,
                        child: ConstrainedBox(
                          child: FlatButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, '/main'),
                            child: Container(),
                          ),
                          constraints: BoxConstraints.expand(),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/fortnite.png'),
                                fit: BoxFit.fill)),
                        width: 100,
                        height: 90,
                        child: ConstrainedBox(
                          child: FlatButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, '/main'),
                            child: Container(),
                          ),
                          constraints: BoxConstraints.expand(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
