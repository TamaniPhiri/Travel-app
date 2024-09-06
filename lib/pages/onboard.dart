import 'package:flutter/material.dart';
import 'package:travel_app/models/onboards.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  int currentIndex = 0;
  Widget dotIndicator(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      margin: EdgeInsets.only(right: 10),
      width: index == currentIndex ? 40 : 10,
      height: 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: index == currentIndex ? Colors.white : Colors.white54),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              itemCount: onBoardData.length,
              itemBuilder: (context, index) {
                return Image.network(
                  onBoardData[index].image,
                  fit: BoxFit.cover,
                );
              }),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: List.generate(onBoardData.length, dotIndicator),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
