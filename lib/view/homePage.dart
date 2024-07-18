import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fitplayer/containers/container.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Программы',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
      ),
      body: ListView(
          padding: const EdgeInsets.all(8),
        children: <Widget> [
          Container1(
          ),
        ],
      ),
    );
  }
}
