import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/theme_provider.dart';
import 'src/app_root.dart';



void main()
{ runApp(
  ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: AppRoot(),
  ),
);
}
