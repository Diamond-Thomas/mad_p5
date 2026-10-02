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
        body: const Center(
          
            child: Row(
            children: [
              Expanded(
                child: BradyTile(imagePath: 'assets/images/greg.jpg'),
              ),
              Expanded(
                child: BradyTile(imagePath: 'assets/images/marcia.jpg'),
              ),
              Expanded(
                 child: BradyTile(imagePath: 'assets/images/peter.jpg'),
              ),
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
