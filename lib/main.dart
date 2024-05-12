// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: project1(),
    );
  }
}

class project1 extends StatefulWidget {
  const project1({super.key});

  @override
  State<project1> createState() => _project1State();
}

class _project1State extends State<project1> {
  List Athkar = [
    {
      "line 1": "لا إله إلا الله وحده لا شريك له",
      "line 2": "له الملك وله الحمد"
    },
    {
      "line 1": "الحمد لله الذي عافاني في جسدي",
      "line 2": " وأذن لي بذكره سبحان الله"
    },
    {
      "line 1": "إن في خلق السموات والأرض واختلاف الليل ",
      "line 2": "والنهار لآيات لأولي الألباب"
    },
    {
      "line 1": " يا أيها الناس توبوا إلى الله فإني أتوب ",
      "line 2": " في اليوم إليه مائة مرة"
    },
  ];
  int myIndex = 0;

  chengWay(direction) {
    if (direction == "Right") {
      setState(() {
        if (myIndex == Athkar.length - 1) {
          myIndex = 0;
        } else {
          myIndex++;
        }
      });
    } else if (direction == "Left") {
      setState(() {
        if (myIndex == 0) {
          myIndex = Athkar.length - 1;
        } else {
          myIndex--;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Athkar[myIndex]["line 1"],
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              // allows the text to overflow its container and remain visible,
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              Athkar[myIndex]["line 2"],
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    chengWay("Left");
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.arrow_left,
                    size: 60,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                FloatingActionButton(
                  onPressed: () {
                    chengWay("Right");
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.arrow_right, size: 60),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
