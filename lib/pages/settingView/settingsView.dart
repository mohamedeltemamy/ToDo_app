import 'package:flutter/material.dart';

class settingsView extends StatelessWidget {
  const settingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 30),
          height: 160,
          width: double.infinity,
          color: theme.primaryColor,
          child: Text("Setting", style: theme.textTheme.titleLarge),
        ),
      ],
    );
  }
}
