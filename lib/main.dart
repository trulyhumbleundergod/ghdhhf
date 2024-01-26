import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String displayedText = ''; // Текст, который будет отображаться

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red, // Цвет фона AppBar
          title: Text('My App'), // Заголовок AppBar
        ),
        body: Center(
          child: Container(
            color: Colors.blue, // Цвет фона для кнопок
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Обработчик нажатия на первую кнопку
                    setState(() {
                      displayedText =
                          'Мэлс Бексултан Асхатович. Гений, миллиардер, филантроп, инвестор';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 0, 255, 115), // Цвет кнопки
                  ),
                  child: Text('Кнопка 1'),
                ),
                SizedBox(height: 16), // Расстояние между кнопками
                ElevatedButton(
                  onPressed: () {
                    // Обработчик нажатия на вторую кнопку
                    setState(() {
                      displayedText = '';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 251, 0), // Цвет кнопки
                  ),
                  child: Text('Кнопка 2'),
                ),
                SizedBox(height: 16), // Расстояние между кнопками
                ElevatedButton(
                  onPressed: () {
                    // Обработчик нажатия на третью кнопку
                    setState(() {
                      displayedText = '';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 0, 255, 221), // Цвет кнопки
                  ),
                  child: Text('Кнопка 3'),
                ),
                SizedBox(height: 16), // Расстояние между кнопками
                ElevatedButton(
                  onPressed: () {
                    // Обработчик нажатия на четвертую кнопку
                    setState(() {
                      displayedText = '';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 63, 50, 180), // Цвет кнопки
                  ),
                  child: Text('Кнопка 4'),
                ),
                SizedBox(height: 16), // Расстояние между кнопками
                Text(
                  displayedText,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
