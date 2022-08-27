import 'package:flutter/material.dart';

class CollapsibleContainer extends StatelessWidget {
  const CollapsibleContainer(
      {required this.height,
      required this.width,
      required this.padding,
      required this.borderRadius,
      required this.color,
      required this.child,
      required this.sidebarBoxShadow});

  final double height, width, padding, borderRadius;
  final Color color;
  final Widget child;
  final List<BoxShadow> sidebarBoxShadow;
  @override
  Widget build(BuildContext context) {
    Locale currentLocale = Localizations.localeOf(context);
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
          right: currentLocale != Locale('ar') ? 10 : 0,
          left: currentLocale == Locale('ar') ? 10 : 0),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
        boxShadow: sidebarBoxShadow,
      ),
      child: child,
    );
  }
}
