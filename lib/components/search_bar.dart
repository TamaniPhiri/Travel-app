import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
          decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue)),
              hintText: "Search..",
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.all(20),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(15))),
        )),
        const SizedBox(
          width: 10,
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(15)),
          child: Icon(
            Icons.tune,
            size: 30,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
