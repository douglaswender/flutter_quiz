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
                      Text('LoL'),
                      Text('CS'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Dota'),
                      Text('Fortnite'),
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