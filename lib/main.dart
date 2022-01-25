import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './theme.dart';

import './ui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier themeNotifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Perfiman',
            theme: themeNotifier.darkTheme ? darkTheme : lightTheme,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
