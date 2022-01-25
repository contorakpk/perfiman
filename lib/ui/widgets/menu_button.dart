import 'package:flutter/material.dart';

import '../../constants.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({Key? key, required this.iconData, required this.label})
      : super(key: key);

  final IconData iconData;
  final String label;

  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding * 1.7),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Icon(
              widget.iconData,
              size: kDefaultIconSize,
            ),
            const SizedBox(width: kDefaultPadding / 1.5),
            Text(
              widget.label,
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                    fontSize: 16,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
