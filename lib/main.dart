import 'package:flutter/material.dart';

import 'colors.dart';

void main() {
  runApp( const InitialWidget() );
}

class InitialWidget extends StatelessWidget {
  const InitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:  const Center(
            child: Text("Gameboxd"),
          ),
          backgroundColor: colors['primary'],
        ),
        body: 
          const Center(
            child: Image(image:AssetImage('images/gameboxd_stamp.png')),
          ),
          backgroundColor: colors['bg']
      )
    );
  }
}