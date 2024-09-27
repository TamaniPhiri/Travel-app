import 'package:flutter/material.dart';
import 'package:travel_app/models/categories.dart';

class CategorySelection extends StatefulWidget {
  const CategorySelection({super.key});

  @override
  State<CategorySelection> createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  String category = "Popular";
  String getCategory(int index) {
    setState(() {
      category = categories[index];
    });
    debugPrint(category);
    return category;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              categories.length,
              (index) => Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: GestureDetector(
                      onTap: () {
                        getCategory(index);
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
    );
  }
}
