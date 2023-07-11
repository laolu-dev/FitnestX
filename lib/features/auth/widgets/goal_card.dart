import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class GoalCard extends StatelessWidget {
  final String image;
  final String goal;
  final String goalDetails;
  const GoalCard(
      {super.key,
      required this.image,
      required this.goal,
      required this.goalDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        boxShadow: const [
          BoxShadow(
              offset: Offset(6, 7), blurRadius: 8, color: AppColor.shadow)
        ],
        gradient: const LinearGradient(colors: AppColor.gradientOne),
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset(image)),
          const SizedBox(height: 25),
          Text(
            goal,
            style: const TextStyle(
                fontSize: 14,
                color: AppColor.white,
                fontWeight: FontWeight.w600),
          ),
          const Divider(
              color: AppColor.white, endIndent: 110, indent: 110),
          const SizedBox(height: 10),
          Text(
            goalDetails,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              color: AppColor.white,
            ),
          ),
        ],
      ),
    );
  }
}
