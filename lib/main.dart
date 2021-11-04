import 'package:flutter/material.dart';

import 'dice_screen.dart';

void main(){
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DiceScreen(),
    );
  }
}
