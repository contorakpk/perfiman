import 'package:flutter/material.dart';

import '../../constants.dart';
import '../widgets/menu_button.dart';
import '../widgets/menu_button_active.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 260,
      padding: const EdgeInsets.fromLTRB(
        kDefaultPadding / 1.7,
        kDefaultPadding * 1.7,
        0,
        kDefaultPadding * 1.7,
      ),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            width: 1,
            color: Theme.of(context).cardColor,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding),
            child: Text(
              'Perfiman',
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Column(
            children: const [
              MenuButtonActive(iconData: Icons.home_filled, label: 'Dashboard'),
              SizedBox(height: kDefaultPadding),
              MenuButton(iconData: Icons.exit_to_app, label: 'Investments'),
              SizedBox(height: kDefaultPadding * 2),
              MenuButton(iconData: Icons.exit_to_app, label: 'Career'),
              SizedBox(height: kDefaultPadding * 2),
              MenuButton(iconData: Icons.exit_to_app, label: 'Wallet'),
              SizedBox(height: kDefaultPadding * 2),
              MenuButton(iconData: Icons.exit_to_app, label: 'News'),
              SizedBox(height: kDefaultPadding * 2),
              MenuButton(iconData: Icons.exit_to_app, label: 'Settings'),
              SizedBox(height: kDefaultPadding * 2),
              MenuButton(iconData: Icons.exit_to_app, label: 'Support'),
            ],
          ),
          const MenuButton(iconData: Icons.exit_to_app, label: 'Log Out'),
        ],
      ),
    );
  }
}
