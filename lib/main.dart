import 'dart:ffi';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List questions = [
    {
      "question": "1. Flutterda loyihalar nimalardan quriladi?",
      "answers": [
        {"option": "teglerdan", "isTrue": false},
        {"option": "widgetlardan", "isTrue": true},
        {"option": "classlardan", "isTrue": false},
        {"option": "funktsyalardan", "isTrue": false},
      ],
    },
    {
      "question":
          "2. Quyidagilardan qaysi biri ichki bo'shliq uchun ishlatiladi?",
      "answers": [
        {"option": "margin", "isTrue": false},
        {"option": "padding", "isTrue": true},
        {"option": "center", "isTrue": false},
        {"option": "stretch", "isTrue": false},
      ],
    },
    {
      "question":
          "3. Quyidagilardan qaysi biri tashqi bo'shliq uchun ishlatiladi?",
      "answers": [
        {"option": "padding", "isTrue": false},
        {"option": "stretch", "isTrue": false},
        {"option": "between", "isTrue": false},
        {"option": "margin", "isTrue": true},
      ],
    },
    {
      "question": "4. To'g'ri button widgetini tanlang?",
      "answers": [
        {"option": "Button", "isTrue": false},
        {"option": "ElevetedButton", "isTrue": true},
        {"option": "EleveteButton", "isTrue": false},
        {"option": "Elevete", "isTrue": false},
      ],
    },
  ];

  int questionNum = 0;
  int result = 0;
  void answerQuestion(bool right) {
    questionNum++;
    if (right) {
      result++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            spacing: 5,
            children: [
              Text("flutter quiz", style: TextStyle(color: Colors.white)),
              Icon(Icons.lightbulb, color: Colors.yellow),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: questionNum < questions.length
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,

                    children: [
                      Text(
                        "${questions[questionNum]["question"]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight(800),
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            answerQuestion(
                              questions[questionNum]["answers"][0]["isTrue"],
                            );
                          });
                        },
                        child: Text(
                          "${questions[questionNum]["answers"][0]["option"]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight(700),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            answerQuestion(
                              questions[questionNum]["answers"][1]["isTrue"],
                            );
                          });
                        },
                        child: Text(
                          "${questions[questionNum]["answers"][1]["option"]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight(700),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            answerQuestion(
                              questions[questionNum]["answers"][2]["isTrue"],
                            );
                          });
                        },
                        child: Text(
                          "${questions[questionNum]["answers"][2]["option"]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight(700),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            answerQuestion(
                              questions[questionNum]["answers"][3]["isTrue"],
                            );
                          });
                        },
                        child: Text(
                          "${questions[questionNum]["answers"][3]["option"]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight(700),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${questions.length} dan $result ta to'g'ri", style: TextStyle(fontSize: 25, fontWeight: FontWeight(900)),),
                      SizedBox(height: 10,),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            questionNum = 0;
                            result = 0;
                          });
                        },
                        label: Text("restart", style: TextStyle(color: Colors.white),),
                        icon: Icon(Icons.restart_alt_outlined, color: Colors.white,),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
