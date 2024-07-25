import 'package:flutter/material.dart';


class Container1 extends StatelessWidget {
  const Container1({super.key,}) ;

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Container (
          width: 100,
          height: 100,
          color: Colors.green,
          child: Center(
            child: Text(
              'Контейнер 3',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      );
  }
  }
