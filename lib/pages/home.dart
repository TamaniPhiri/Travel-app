import 'package:flutter/material.dart';
import 'package:travel_app/components/my_app_bar.dart';
import 'package:travel_app/components/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const MyAppBar(),
              SizedBox(
                height: size.height * 0.03,
              ),
              const MySearchBar()
            ],
          ),
        ),
      ),
    );
  }
}
