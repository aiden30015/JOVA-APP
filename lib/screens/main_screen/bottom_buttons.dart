import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  final String text;
  final bool color;
  final void Function(BuildContext context) click;

  const BottomButtons({
    super.key,
    required this.text,
    required this.color,
    required this.click,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 33,
      child: Builder(
        builder: (BuildContext context) {
          return TextButton(
            onPressed: () => click(context),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                color ? Colors.purple : Colors.grey,
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
                const BorderSide(color: Colors.black),
              ),
            ),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }
}
