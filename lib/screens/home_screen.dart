import 'package:flutter/material.dart';
import 'package:flutter_hangman/components/action_button.dart';
import 'package:flutter_hangman/utilities/hangman_words.dart';
import 'game_screen.dart';
import 'loading_screen.dart';

class HomeScreen extends StatefulWidget {
  final HangmanWords hangmanWords = HangmanWords();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    widget.hangmanWords.readWords();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    Text(
                      'Forca em Flutter',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 47,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 3.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Bruno Pequeno RA:1431432312033',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      height: 64,
                      child: ActionButton(
                        buttonTitle: 'Iniciar',
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GameScreen(
                                hangmanObject: widget.hangmanWords,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
