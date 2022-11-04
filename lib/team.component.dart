import 'package:flutter/material.dart';

class TeamComponent extends StatelessWidget {
  const TeamComponent(
    this.teamName,
    this.city,
    this.division,
    this.name,
    this.conference,
  );

  final String teamName;
  final String city;
  final String division;
  final String name;
  final String conference;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(this.teamName),
              Text(this.city),
              Text(this.division),
            ],
          ),
          Column(
            children: [
              Text(this.name),
              Text(this.conference),
            ],
          ),
        ],
      ),
    );
  }
}
