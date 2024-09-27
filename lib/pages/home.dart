import 'package:flutter/material.dart';
import 'package:travel_app/components/category_selection.dart';
import 'package:travel_app/components/explore_cities.dart';
import 'package:travel_app/components/my_app_bar.dart';
import 'package:travel_app/components/search_bar.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:travel_app/models/destination.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Destination> myDestination = [];
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
              const CategorySelection(),
              Container(
                height: size.height * 0.52,
                padding: EdgeInsets.only(top: 10, bottom: 10, right: 60),
                child: Material(
                  elevation: 0.01,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Swiper(
                    itemCount: myDestination.length,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
