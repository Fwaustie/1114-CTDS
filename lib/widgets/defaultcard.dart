import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {
  const DefaultCard({super.key, required this.amount, required this.item});

  final int amount;
  final String item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(amount.toString(), style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
            )),
            Text(item, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              fontStyle: FontStyle.italic,
            )),
          ]
        ),
      )
    );
  }
}