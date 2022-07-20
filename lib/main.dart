import 'package:dicoding/parentScrenn.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainPage());


class MainPage extends StatelessWidget {
  const MainPage
({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: ParentScreen(),
    );
  }
}