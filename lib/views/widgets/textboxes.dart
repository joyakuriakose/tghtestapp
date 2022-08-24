import 'package:flutter/material.dart';

class TextBoxes extends StatefulWidget {
  @override
  _TextBoxesState createState() => _TextBoxesState();
}

class _TextBoxesState extends State<TextBoxes> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Translate from',
                        style: TextStyle(color: Colors.white70, fontSize: 13)),
                    TextSpan(
                        text: '(Germany)',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 13))
                  ])),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                height: 150,
                //width: 400,
                color: Colors.black,
                //height: 200,

                child: Card(
                  color: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Text(
                          "Hello\nthis is an google\nlanguage translator application",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding:
                             EdgeInsets.only(top: 45, left: 10, right: 10),
                        child: Container(
                          width: 400,
                          height: 1,
                          color: Colors.white30,
                        ),
                      ),
                      SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "123/2300",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Translate to',
                        style: TextStyle(color: Colors.white70, fontSize: 13)),
                    TextSpan(
                        text: '(Canada)',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 13))
                  ])),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Container(
                height: 150,
                //width: 400,
                color: Colors.black,
                //height: 200,

                child: Card(
                  color: Colors.grey[900],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Text(
                          "Hello\nthis is an google\nlanguage translator application",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 45, left: 10, right: 10),
                        child: Container(
                          width: 400,
                          height: 1,
                          color: Colors.white30,
                        ),
                      ),
                      SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "123/2300",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 130),
            Container(
              width: 200,
              height: 2,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}
