import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {
  const DefaultCard({
    super.key,
    required this.amount,
    required this.amountFontSize,
    required this.item,
    required this.itemFontSize,
    required this.minHeightP,
  });

  final int amount;
  final String item;
  final double amountFontSize;
  final double itemFontSize;
  final double minHeightP;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: minHeightP,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(amount.toString(), style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: amountFontSize,
              )),
              Text(item, style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: itemFontSize,
                fontStyle: FontStyle.italic,
              )),
            ]
          ),
        )
      ),
    );
  }
}