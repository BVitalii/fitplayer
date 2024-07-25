import 'package:flutter/material.dart';

class Playlist extends StatelessWidget {
  const Playlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Плейлисты'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {
              // Действие при нажатии кнопки
              print("Кнопка нажата!");
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 13, // Количество элементов в списке
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Элемент $index'),
          );
        },
      ),
    );
  }
}
