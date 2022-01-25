import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../theme.dart';

class MenuButtonActive extends StatefulWidget {
  const MenuButtonActive(
      {Key? key, required this.iconData, required this.label})
      : super(key: key);

  final IconData iconData;
  final String label;

  @override
  _MenuButtonActive createState() => _MenuButtonActive();
}

class _MenuButtonActive extends State<MenuButtonActive> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        width: double.infinity,
        height: 62,
        decoration: BoxDecoration(
          color: kDarkBackgroundSecondaryColor,
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.26, 0.0),
            stops: [0.2, 1.1],
            colors: [Color(0xFF73387b), kDarkBackgroundSecondaryColor],
          ),
          borderRadius: BorderRadius.circular(kDefaultBorderRadius * 1.8),
        ),
        child: Row(
          children: [
            Container(
              height: 38,
              width: 3,
              decoration: BoxDecoration(
                color: kDarkAccentColor,
                borderRadius: BorderRadius.circular(kDefaultBorderRadius),
              ),
            ),
            const SizedBox(width: kDefaultPadding * 1.5),
            Icon(
              widget.iconData,
              color: kDarkActiveMenuColor,
              size: kDefaultIconSize,
            ),
            const SizedBox(width: kDefaultPadding / 1.5),
            Text(
              widget.label,
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                    fontSize: 16,
                    color: kDarkActiveMenuColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
