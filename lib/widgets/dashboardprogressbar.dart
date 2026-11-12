import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
    required this.valueP,
    required this.colorP,
    required this.minHeightP,
    required this.widthP,
    required this.branch,
    required this.assignedtaskamt,
    required this.finishedtaskamt,
    required this.cryamt,
    required this.delayedtaskamt,
    required this.activemembersinbranch,
  });

  final Color colorP;
  final String branch;
  final int assignedtaskamt;
  final int finishedtaskamt;
  final int cryamt;
  final int delayedtaskamt;
  final int activemembersinbranch;
  final double valueP;
  final double minHeightP;
  final double widthP;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$branch: ${(valueP * 100).toStringAsFixed(2)}%", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                fontSize: 25,
              )),
              Text("Assigned Tasks: $assignedtaskamt", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              )),
              Text("Finished Assigned Tasks: $finishedtaskamt", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              )),
              Text("Cries: $cryamt", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              )),
              Text("Delayed Tasks: $delayedtaskamt", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              )),
              Text("Active Members In Branch: $activemembersinbranch", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              )),
              SizedBox(
                height: 5
              ),
              LinearProgressIndicator(
                value: valueP,
                color: colorP,
                backgroundColor: Colors.grey,
                minHeight: minHeightP,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}