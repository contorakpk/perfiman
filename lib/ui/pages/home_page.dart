import 'package:flutter/material.dart';
import 'package:perfiman/constants.dart';
import 'package:perfiman/theme.dart';
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
        children: [
          const MyDrawer(),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Theme.of(context).cardColor,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 2,
                        ),
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: kDarkBackgroundSecondaryColor,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Icon(
                            Icons.abc,
                            size: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 1,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.symmetric(
                              vertical: BorderSide(
                                color: Theme.of(context).cardColor,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 1.5),
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: kDarkBackgroundSecondaryColor,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Icon(
                            Icons.abc,
                            size: 30,
                          ),
                        ),
                      ),
                      Container(
                        color: Theme.of(context).cardColor,
                        width: 1,
                        height: double.infinity,
                      ),
                      const SizedBox(width: kDefaultPadding * 1.5),
                      const Text(
                        'FluSett',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(width: kDefaultPadding / 2),
                      const CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 25,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 23,
                        ),
                      ),
                      const SizedBox(width: kDefaultPadding * 1.5),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
