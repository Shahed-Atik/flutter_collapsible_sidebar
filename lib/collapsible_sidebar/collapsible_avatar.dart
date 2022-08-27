import 'package:flutter/material.dart';

class CollapsibleAvatar extends StatelessWidget {
  const CollapsibleAvatar({
    required this.avatarSize,
    required this.backgroundColor,
    required this.name,
    this.avatarImg,
    required this.textStyle,
  });

  final double avatarSize;
  final Color backgroundColor;
  final String name;
  final avatarImg;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: avatarSize,
      width: avatarSize,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(avatarSize),
      // ),
      child: avatarImg != null ? _avatar : _initials,
    );
  }

  Widget get _avatar {
    return Image(
      image: avatarImg,
      fit: BoxFit.contain,
      height: avatarSize,
      width: avatarSize,
    );
  }

  Widget get _initials {
    return Center(
      child: Text(
        '${name.substring(0, 1).toUpperCase()}',
        style: textStyle,
      ),
    );
  }
}
