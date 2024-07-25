import 'package:flutter/material.dart';
import 'package:fitplayer/view/mediaScreen.dart';

class Download extends StatelessWidget {
  const Download({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Загружено'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30),
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
          }
      ),
    );
  }
}


