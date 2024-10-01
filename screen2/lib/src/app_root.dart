
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/theme_provider.dart';
import '../screens/profile_screen.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: ProfileScreen(),
    );
  }
}
