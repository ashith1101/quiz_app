import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';     

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore =_totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'How do you approach new situations?',
        'answers': [{'text':'Enthusiastically','score':2},{'text':'Cautiously','score':1},{'text':'Curiously','score':3},{'text':'Skeptically','score':1} ],
      },
      {
        'questionText': 'How do you handle stress or pressure?',
        'answers': [{'text':'Seek support','score':3},{'text':'Reflect','score':2},{'text':'Problem-solve','score':4},{'text':'Ignore','score':1} ],
      },
      {
        'questionText': 'What is your preferred social environment?',
        'answers': [{'text':'Large gatherings','score':2},{'text':'Small groups','score':3},{'text':'One-on-one','score':4},{'text':'Solitary','score':1} ],
      },
      {
        'questionText': 'How do you make decisions?',
        'answers': [{'text':'Logic and facts','score':3},{'text':' Instinct and intuition','score':4},{'text':'Consider others opinions','score':2},{'text':'Avoid making decisions','score':1} ],
      },
      {
        'questionText': 'How do you handle criticism or feedback?',
        'answers': [{'text':'Open and constructive','score':4},{'text':'Defensive','score':2},{'text':'Indifferent','score':1},{'text':'Suspiciously','score':3} ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personality Check'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
