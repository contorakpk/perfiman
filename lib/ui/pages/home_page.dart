import 'package:flutter/material.dart';
import 'package:perfiman/constants.dart';
import '../components/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          MyDrawer(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(kDefaultPadding),
            ),
          ),
        ],
      ),
    );
  }
}
