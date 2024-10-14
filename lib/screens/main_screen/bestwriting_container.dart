import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestwritingContainer extends StatelessWidget {
  final String title;
  final String body;
  const BestwritingContainer({
    super.key,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 3,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                  ),
                ),
                Container(
                  width: 500,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex : 1,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "asset/image/joavlogo.png",
                              width: 200,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "test1",
                              style: TextStyle(
                                fontSize: 50,
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Text(
                              body.length > 10 ?
                              '${body.substring(0, 10)}...' : body,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey[700],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
