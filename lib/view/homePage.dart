import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:fitplayer/containers/container.dart';
import 'package:fitplayer/view/profileScreen.dart';

import 'package:fitplayer/view/playlist.dart';
import 'package:fitplayer/view/download.dart';
import 'package:fitplayer/view/mediaScreen.dart';


List<String> buttonNames = <String>[
  'WCycle',
  'WStep',
  'WPump',
  'WBalance',
  'WCombat',
  'WJam',
  'WCore'
];

List<String> number = <String>['1', '2', '3', '4', '5', '6', '7'];

List<int> colorCodes = <int>[600, 500, 100, 600, 500, 100, 600, 500];

class Homepage extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<Homepage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Screen1(),
    Download(),
    Playlist(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Загрузки',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Плейлисты',

          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.black26,
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final buttonHeight = screenHeight / 10; // +2 для учета AppBar и BottomNavigationBar

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Программы'),
        titleTextStyle:  TextStyle(color: Colors.white,fontSize: 30, // Задайте нужный размер шрифта
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: buttonNames.map((name)
          {
            return Container(
              height: buttonHeight, // Установка высоты кнопки
              width: double.maxFinite, // Заполняем всю ширину
                // margin: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListViewScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Центрирование содержимого
                    children: [
                    Image.asset(
                    'assets/images/cycle.png', // Укажите путь к вашей картинке
                    // height: 100, // Высота картинки
                    // width: 133, // Ширина картинки
                  ),
                  SizedBox(width: 1), // Пробел между изображением и текстом
                        Text(name,
                    style: TextStyle(fontSize: 1.0, // Задайте нужный размер шрифта
                  ),
                ),
                  ],
                ),
            ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Список'),
      ),
      body: ListView.builder(
        itemCount: 13, // Количество элементов в списке
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Элемент $index'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mediascreen(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}