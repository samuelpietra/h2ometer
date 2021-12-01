import 'package:flutter/material.dart';
import 'package:h2ometer/pages/index.dart' as pages;
import 'package:h2ometer/theme/index.dart' as theme;

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.2,
        centerTitle: true,
        backgroundColor: theme.blue50
      ),
      body: Container(
        color: theme.blue50,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child: FractionallySizedBox(
                  heightFactor: 0.7,
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.cover,
                  )
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                child: Container(
                  alignment: Alignment.center,
                  color: theme.blue50,
                  child: FractionallySizedBox(
                    heightFactor: 0.7,
                    child: Image.asset(
                      "assets/images/avatar.png",
                      fit: BoxFit.cover,
                    )
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: 40,
                    margin: EdgeInsets.only(
                      left: 45, right: 45
                    ),
                    padding: EdgeInsets.only(left: 16),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 40,
                    margin: EdgeInsets.only(
                      top: 16, left: 45, right: 45
                    ),
                    padding: EdgeInsets.only(left: 16),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Senha',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ]
              )
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.white,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 35),
                      child: FlatButton(
                        color: theme.blue40,
                        padding: EdgeInsets.only(
                          bottom: 10, left: 120, right: 120, top: 10
                        ),
                        textColor: Colors.white,
                        child: Text(
                          'Entrar',
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => pages.Dashboard()
                            )
                          );
                        },
                      ),
                    ),
                    Text(
                      'ou',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: FlatButton(
                        color: theme.blue50,
                        padding: EdgeInsets.only(
                          bottom: 10, left: 90, right: 90, top: 10
                        ),
                        textColor: Colors.white,
                        child: Text(
                          'Cadastrar-se',
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}
