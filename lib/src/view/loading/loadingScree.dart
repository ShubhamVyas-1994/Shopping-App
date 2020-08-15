import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Image(
              image: AssetImage('assets/images/splashscreen.png'),
              fit: BoxFit.fitHeight,
            ),
            height: MediaQuery.of(context).size.height));
  }
}
