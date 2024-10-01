
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../screens/book_screen.dart';

class  AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookScreen(),
    );
  }
}