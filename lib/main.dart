// import 'dart:html';

// packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// global
import 'colors.dart';

// custom widgets
import 'primary_button_login.dart';

void main() {
  runApp( const InitialWidget() );
}

class InitialWidget extends StatelessWidget {
  const InitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    // final Size screenSize = MediaQuery.of(context).size;
    
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme()
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title:  const Center(
        //     child: Text("Gameboxd"),
        //   ),
        //   backgroundColor: colors['primary'],
        // ),
        body: 
          Container(
            color: colors["bg"],
            // width: screenSize.width,
            // height: screenSize.height,
            alignment: Alignment.center,
            // margin: const EdgeInsets.all(20),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Image(image: AssetImage('images/gameboxd_stamp.png')),
                PrimaryButtonLogin(
                  label: "Sign up with Google",
                  onPressed: (){}
                ),
                PrimaryButtonLogin(
                  label: "Create account",
                  onPressed: (){}
                )
              ],
            ), 
          )
      )
    );
  }
}