import 'package:flutter/material.dart';
import './constants/colors/colorconstants.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: simboticsRed,
        title: const Text("Account Settings", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        )),
        leading: IconButton(
          icon: Transform.flip(
            flipX: true,
            child: const Icon(Icons.login_sharp, color: Colors.white,)
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}