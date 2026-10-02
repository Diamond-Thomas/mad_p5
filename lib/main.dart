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
          child: SizedBox(
            width: 200,
            height: 200,
            child: BradyTile(
              imagePath: 'assets/images/alice.jpg'
            ),
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
      padding: const EdgeInsets.all(5),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover
      )
    );

  }  
}
