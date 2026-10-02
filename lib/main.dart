import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Brady Bunch Test'),
        ),
        body:  Center(
          child: GridView.count(
          crossAxisCount: 3,
          children: const [
            BradyTile(imagePath: 'assets/images/mike.jpg'),
            BradyTile(imagePath: 'assets/images/carol.jpg'),
            BradyTile(imagePath: 'assets/images/alice.jpg'),
            BradyTile(imagePath: 'assets/images/greg.jpg'),
            BradyTile(imagePath: 'assets/images/marcia.jpg'),
            BradyTile(imagePath: 'assets/images/peter.jpg'),
            BradyTile(imagePath: 'assets/images/jan.jpg'),
            BradyTile(imagePath: 'assets/images/bobby.jpg'),
            BradyTile(imagePath: 'assets/images/cindy.jpg'),
          ],
          ),
          ),
        ),
    );
  }
}


class BradyTile extends StatelessWidget {
  final String imagePath;
  
  const BradyTile({
    super.key,
    required this.imagePath
    });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      margin: const EdgeInsets.all(0.5),
      padding: const EdgeInsets.all(3.5),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover
      )
    );

  }  
}
