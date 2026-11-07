import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({super.key, required this.amount, required this.item});

  final int amount;
  final String item;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 140,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(amount.toString(), style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 40,
              )),
              Text(item, style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              )),
            ],
          ),
        ),
      ),
    );
  }
}