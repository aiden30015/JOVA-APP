import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../state/nagivator/button_click.dart';

class MainBackbutton extends StatelessWidget {
  const MainBackbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => ButtonActions.backmainbutton(context),
      icon: const Icon(Icons.arrow_back),
      padding: const EdgeInsets.all(0),
      constraints: const BoxConstraints(),
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
    );
  }
}
