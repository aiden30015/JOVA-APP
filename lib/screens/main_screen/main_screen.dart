import 'package:flutter/material.dart';
import 'package:jovajovajova/screens/main_screen/top_container.dart';
import 'package:jovajovajova/screens/main_screen/bottom_buttons.dart';
import 'package:jovajovajova/screens/main_screen/bestwriting_container.dart';
import 'package:jovajovajova/state/nagivator/button_click.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: const Column(
          children: [
            TopContainer(),
            BestwritingContainer(title: "조회수가 가장 많은 구인", body: "이런 친구를 굉장히 좋아합니다람쥐ㅇㅇㅇ"),
            SizedBox(height: 30),
            BestwritingContainer(title: "조회수가 가장 많은 구직", body: "하"),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomButtons(text: "구인", color: false, click: ButtonActions.jobOfferButton),
                  BottomButtons(text: "구직", color: false, click: ButtonActions.jobSerachButton),
                  BottomButtons(text: "내 정보", color: false, click: ButtonActions.myprofileButton),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
