import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  final bool color;
  final Icon icon;
  final void Function(BuildContext context) click;

  const BottomButtons({
    super.key,
    required this.color,
    required this.click,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 33,
      child: Builder(
        builder: (BuildContext context) {
          return Hero(
            tag: "pagechange",
            child: IconButton(
              onPressed: () => click(context),
              iconSize: 28,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                minimumSize: MaterialStateProperty.all(
                  const Size(500, 500),
                ),
                side: MaterialStateProperty.all(
                  const BorderSide(color: Colors.white),
                ),
              ),
              icon: icon,
              color: color ? Colors.purple : Colors.grey,
            ),
          );
        },
      ),
    );
  }
}
