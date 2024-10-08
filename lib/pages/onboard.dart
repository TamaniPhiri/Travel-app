import 'package:flutter/material.dart';
import 'package:travel_app/models/onboards.dart';
import 'package:travel_app/pages/home.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  int currentIndex = 0;
  Widget dotIndicator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      margin: const EdgeInsets.only(right: 10),
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
              onPageChanged: (value) => setState(() {
                    currentIndex = value;
                  }),
              itemCount: onBoardData.length,
              itemBuilder: (context, index) {
                return Image.network(
                  onBoardData[index].image,
                  fit: BoxFit.cover,
                );
              }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List.generate(onBoardData.length, dotIndicator),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text.rich(TextSpan(
                    style: const TextStyle(
                        fontSize: 44, height: 1.2, color: Colors.white),
                    children: [
                      TextSpan(
                          text: "${onBoardData[currentIndex].text1}\n",
                          style: const TextStyle(fontWeight: FontWeight.w300)),
                      TextSpan(
                          text: onBoardData[currentIndex].text2,
                          style: const TextStyle(fontWeight: FontWeight.w900)),
                    ])),
                const SizedBox(
                  height: 20,
                ),
                if (currentIndex == onBoardData.length - 1)
                  GestureDetector(
                    onTap: () {
                      print("Tapped on navigate to home");
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const HomePage()),
                      ).then((_) {
                        print("Navigation completed");
                      }).catchError((error) {
                        print("Navigation error: $error");
                      });
                    },
                    child: AnimatedContainer(
                      padding: const EdgeInsets.all(15),
                      duration: const Duration(milliseconds: 400),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.lightBlue,
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
