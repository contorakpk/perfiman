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
                            borderRadius: BorderRadius.circular(16),
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
                          padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 2,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.symmetric(
                              vertical: BorderSide(
                                color: Theme.of(context).cardColor,
                                width: 1,
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 55,
                                width: 111,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: kDefaultPadding),
                                decoration: BoxDecoration(
                                  color: kDarkBackgroundSecondaryColor,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'USD',
                                      style: TextStyle(
                                        color: kDarkSecondaryTextColor,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.ac_unit,
                                      size: 15,
                                    ), //TODO Change icon
                                  ],
                                ),
                              ),
                              const SizedBox(width: kDefaultPadding),
                              Container(
                                height: 55,
                                width: 111,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: kDefaultPadding),
                                decoration: BoxDecoration(
                                  color: kDarkBackgroundSecondaryColor,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Eng',
                                      style: TextStyle(
                                        color: kDarkSecondaryTextColor,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.ac_unit,
                                      size: 15,
                                    ), //TODO Change icon
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Container(
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
                            ],
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
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Stack(
                            children: const [
                              Center(
                                child: Icon(
                                  Icons.abc,
                                  size: 30,
                                ),
                              ),
                              Positioned(
                                left: 35,
                                top: 15,
                                child: CircleAvatar(
                                  backgroundColor: Colors.purple,
                                  radius: 5,
                                ),
                              ),
                            ],
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
                          color: kDarkSecondaryTextColor,
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
                Padding(
                  padding: const EdgeInsets.all(kDefaultPadding * 1.35),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '  Welcome, FluSett',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.3,
                              color: kDarkPrimaryTextColor,
                              fontSize: 34,
                            ),
                          ),
                          Container(
                            height: 50,
                            padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding,
                            ),
                            decoration: BoxDecoration(
                              color: kDarkBackgroundSecondaryColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.ac_unit,
                                  size: 22,
                                  color: Colors.purple,
                                ),
                                Text(
                                  '    Last month    ',
                                  style: TextStyle(
                                    color: kDarkSecondaryTextColor,
                                    fontSize: 14,
                                  ),
                                ),
                                Icon(
                                  Icons.ac_unit,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(kDefaultPadding * 1.35),
                    width: double.infinity,
                    height: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: kDefaultPadding * 1.5,
                                vertical: kDefaultPadding),
                            decoration: BoxDecoration(
                              color: const Color(0xFF30343F),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Categories',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: kDarkSecondaryTextColor,
                                      ),
                                    ),
                                    Icon(
                                      Icons.add_circle,
                                      color: Color(0xFF3E7675),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: kDefaultPadding),
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          height: 70,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF373B46),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                  width: kDefaultPadding),
                                              Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  color: Colors.white10,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                              ),
                                              const SizedBox(
                                                  width: kDefaultPadding),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    'Shopping',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          kDefaultPadding / 8),
                                                  Text(
                                                    '200\$',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Colors.white54,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              const Text(
                                                '2 operations',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.white54,
                                                ),
                                              ),
                                              const SizedBox(
                                                  width: kDefaultPadding),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: kDefaultPadding),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: kDefaultPadding * 2),
                        Expanded(
                          flex: 7,
                          child: Container(
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
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
