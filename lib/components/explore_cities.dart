import 'package:flutter/material.dart';

class ExploreCities extends StatelessWidget {
  const ExploreCities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Explore cities",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text(
                "All",
                style: TextStyle(color: Colors.blue[200]),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 14,
                color: Colors.blueAccent,
              )
            ],
          )
        ],
      ),
    );
  }
}
