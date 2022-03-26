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
                                        const SizedBox(height: kDefaultPadding),
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
                          child: Column(
                            children: [
                              SizedBox(
                                height: 170,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(
                                          kDefaultPadding,
                                        ),
                                        decoration: BoxDecoration(
                                          color: kDarkBackgroundSecondaryColor,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            CircleAvatar(
                                              backgroundColor: Colors.purple,
                                            ),
                                            Spacer(),
                                            Text(
                                              'Total income',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white54,
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            Text(
                                              '\$1,340',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 1.3,
                                                color: kDarkPrimaryTextColor,
                                                fontSize: 28,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: kDefaultPadding),
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(
                                          kDefaultPadding,
                                        ),
                                        decoration: BoxDecoration(
                                          color: kDarkBackgroundSecondaryColor,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            CircleAvatar(
                                              backgroundColor: Colors.blue,
                                            ),
                                            Spacer(),
                                            Text(
                                              'Total income',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white54,
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            Text(
                                              '\$12,340',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 1.3,
                                                color: kDarkPrimaryTextColor,
                                                fontSize: 28,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: kDefaultPadding),
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(
                                          kDefaultPadding,
                                        ),
                                        decoration: BoxDecoration(
                                          color: kDarkBackgroundSecondaryColor,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            CircleAvatar(
                                              backgroundColor: Colors.yellow,
                                            ),
                                            Spacer(),
                                            Text(
                                              'Total income',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white54,
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            Text(
                                              '\$4,680',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 1.3,
                                                color: kDarkPrimaryTextColor,
                                                fontSize: 28,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: kDefaultPadding),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Theme.of(context).cardColor,
                                    ),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: kDefaultPadding * 1.3,
                                          horizontal: kDefaultPadding,
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 250,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          image: const DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'assets/images/purple_bg.jpg'),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              'You can download our app',
                                              style: TextStyle(
                                                fontSize: 28,
                                                color: kDarkPrimaryTextColor,
                                                letterSpacing: 1.1,
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            const Text(
                                              'for Windows, Linux, Android and IOS',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: kDarkSecondaryTextColor,
                                              ),
                                            ),
                                            const SizedBox(
                                                height: kDefaultPadding * 1.5),
                                            ElevatedButton(
                                              onPressed: () => null,
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.purple
                                                    .withOpacity(0.8),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  vertical:
                                                      kDefaultPadding * 1.2,
                                                  horizontal:
                                                      kDefaultPadding * 2.7,
                                                ),
                                              ),
                                              child: const Text(
                                                'Download page',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: kDefaultPadding),
                                        width: double.infinity,
                                        height: 1,
                                        color: Theme.of(context).cardColor,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: kDefaultPadding),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: const [
                                                Text(
                                                  'Operations',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color:
                                                        kDarkSecondaryTextColor,
                                                  ),
                                                ),
                                                Text(
                                                  'See all',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Color(0xFF3E7675),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                                height: kDefaultPadding),
                                            SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        height: 45,
                                                        width: 45,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.blue,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          width:
                                                              kDefaultPadding /
                                                                  1.5),
                                                      const Text(
                                                        'Dubai Design Week 2021',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              kDarkPrimaryTextColor,
                                                        ),
                                                      ),
                                                      const Spacer(),
                                                      const Text(
                                                        'DEC 12, 2021, 09:40',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              kDarkSecondaryTextColor,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          width:
                                                              kDefaultPadding),
                                                      const Text(
                                                        '1,400\$',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              kDarkPrimaryTextColor,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                      height: kDefaultPadding),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        height: 45,
                                                        width: 45,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.yellow,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          width:
                                                              kDefaultPadding /
                                                                  1.5),
                                                      const Text(
                                                        'Dubai Design Week 2021',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              kDarkPrimaryTextColor,
                                                        ),
                                                      ),
                                                      const Spacer(),
                                                      const Text(
                                                        'DEC 12, 2021, 09:40',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              kDarkSecondaryTextColor,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          width:
                                                              kDefaultPadding),
                                                      const Text(
                                                        '1,400\$',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              kDarkPrimaryTextColor,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
