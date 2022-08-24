import 'package:flutter/material.dart';
import 'package:tghtestapp/views/widgets/languagebutton.dart';
import 'package:tghtestapp/views/widgets/textboxes.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15, left: 5),
          child: Text(
            'Text Translation',
            style: TextStyle(fontSize: 15),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 65, 20, 0),
                child: Container(
                  width: 500,
                  height: 1,
                  color: Colors.white30,
                ),
              ),
              SizedBox(height: 20),
              LanguageButtons(),
              SizedBox(height: 20),
              TextBoxes(),
            ],
          )
        ],
      ),
    );
  }
}
