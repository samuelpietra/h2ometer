import 'package:flutter/material.dart';
import 'package:h2ometer/theme/index.dart' as theme;

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.2,
        centerTitle: true,
        backgroundColor: theme.blue50
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: theme.blue50,
              ),
            )
          ],
        ),
      )
    );
  }
}
