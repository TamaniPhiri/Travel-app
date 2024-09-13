import 'package:flutter/material.dart';
import 'package:travel_app/components/explore_cities.dart';
import 'package:travel_app/components/my_app_bar.dart';
import 'package:travel_app/components/search_bar.dart';
import 'package:travel_app/models/categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String category = "Popular";
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
              const MySearchBar(),
              const SizedBox(
                height: 30,
              ),
              const ExploreCities(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        categories.length,
                        (index) => Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    category = categories[index];
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: category == categories[index]
                                          ? Colors.blue[400]
                                          : Colors.white),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  child: Text(
                                    categories[index],
                                    style: TextStyle(
                                        color: category == categories[index]
                                            ? Colors.white
                                            : Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
