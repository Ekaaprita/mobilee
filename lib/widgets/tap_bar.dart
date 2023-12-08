import 'package:flutter/material.dart';

class TapBar extends StatefulWidget {
  final int bgColor;
  final String name;
  final int textColor;

  const TapBar({
    super.key,
    required this.bgColor,
    required this.name,
    required this.textColor,
  });

  @override
  State<TapBar> createState() => _TapBarState();
}

class _TapBarState extends State<TapBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: Color(widget.bgColor),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Text(
        widget.name,
        style: TextStyle(
          color: Color(widget.textColor),
        ),
      ),
    );
  }
}
