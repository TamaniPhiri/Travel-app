import 'package:flutter/material.dart';
import 'package:travel_app/models/onboards.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(itemBuilder: (context, index) {
            return Image.network(
              onBoardData[index].image,
              fit: BoxFit.cover,
            );
          })
        ],
      ),
    );
  }
}
