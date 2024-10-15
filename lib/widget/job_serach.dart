import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobSerach extends StatelessWidget {
  const JobSerach({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child:SearchBar(
              hintText: "입력",
            ),
          ),
          Expanded(
              flex: 1,
              child: Icon(Icons.search
              )
          ),
        ],
      ),
    );
  }
}
