import 'package:flutter/material.dart';
import '../accountsettings.dart';

class AccountButton extends StatelessWidget {
  const AccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: IconButton(
        icon: const Icon(Icons.account_circle_outlined),
        tooltip: "Your Account",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(builder: (context) => AccountSettings()),
          );
        },
      ),
    );
  }
}