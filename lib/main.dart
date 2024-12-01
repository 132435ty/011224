import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int flag = 0;
  bool IconChange = false;
  bool IconChange2 = false;
  int variable = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Volume: $variable"),
            Row(children: [
              Radio(
                value: 1,
                groupValue: flag,
                onChanged: (val) {
                  setState(() {
                    flag = val!;
                    variable += 10;
                  });
                },
              ),
              Text("+10"),
            ]),
            Row(children: [
              Radio(
                value: 2,
                groupValue: flag,
                onChanged: (val) {
                  setState(() {
                    flag = val!;
                    variable -= 10;
                  });
                },
              ),
              Text("-10"),
            ]),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/logo.svg',
                  semanticsLabel: 'Logo',
                  color: Colors.black,
                  height: 100.0,
                  width: 100.0,
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("$variable"),
              ],
            ),
            IconButton(
              icon: Icon(
                (IconChange ? Icons.add_circle : Icons.add_circle_outline)
                as IconData?,
                color: Colors.black,
                size: 100,
              ),
              onPressed: () {
                setState(() {
                  IconChange = !IconChange;
                  variable -= 100;
                });
              },
            ),
            IconButton(
              icon: Icon(
                (IconChange2 ? Icons.add_circle : Icons.add_circle_outline)
                as IconData?,
                color: Colors.black,
                size: 100,
              ),
              onPressed: () {
                setState(() {
                  IconChange2 = !IconChange2;
                  variable += 100;
                });
              },
            ),
            Image.asset('assets/babd6d37eb2dd965c7f1dfb516d54094.jpg'),
            Image.network('https://cdn.culture.ru/images/adcacad8-b2be-55cb-8017-59226d6f7073')
          ],
        ),
      ),
    );
  }
}