import 'package:flutter/material.dart';

// paleta de cores do app
// maior número = mais escuro
// 0xFF = opacidade 100%, se quiser menos: https://gist.github.com/creativecreatorormaybenot/8710f6f752f6a0f2cae13abb538f0e8e#hex-opacity-values
// após 0xFF, adicionar o hexadecimal da cor desejada
const blue60 = const Color(0xFF2A4565);
const blue50 = const Color(0xFF527CA2);
const blue40 = const Color(0xFF1FD2FF);
const gray50 = const Color(0xFFF0EBEB);
const red50 = const Color(0xFFD21616);

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  FractionallySizedBox _body() {
    return FractionallySizedBox(
      heightFactor: 1,
      widthFactor: 1,
      child: Stack(
        children: [
          Container(
            color: blue50,
            padding: EdgeInsets.all(50),
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                FractionallySizedBox(
                  heightFactor: 0.18,
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.cover,
                  )
                ),
              ]
            )
          ),
          Container(
            padding: EdgeInsets.all(50),
            alignment: Alignment.center,
            child: Stack(
              children: [
                Positioned(
                width: 206,
                top: 170,
                child: Container(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/avatar.png'),
                      ]
                  ),
                ))          
              ]
            )
          ),
        ]
      ),
    );
  }
}
