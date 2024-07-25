import 'package:fitplayer/view/pdf_screen.dart';
import 'package:flutter/material.dart';
import 'package:fitplayer/view/videoPlayerScreen.dart';

class Mediascreen extends StatelessWidget {
  const Mediascreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Релиз №',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Center(
              child: Image.asset(
            'assets/images/wcycle.jpg',
            height: 200, // Высота картинки
            width: 266, // Укажите путь к вашей картинке
          ) // Ширина картинки
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PDFScreen(path: 'assets/pdf/WCYCLE05.pdf',)),
                );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white),
                child: Text('Книжка'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VideoPlayerScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white),
                child: Text('Видео'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white),
                child: Text('Музыка'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
