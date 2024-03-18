
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_sliver_app/utils/styles.dart';

class BuildColumnSearch extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color? color;
  const BuildColumnSearch({
    super.key,
    required this.name,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 75,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Icon(icon),
        ),
        const Gap(5),
        Text(
          name,
          style: Styles.headline8,
        ),
      ],
    );
  }
}
