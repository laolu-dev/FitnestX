import 'package:carousel_slider/carousel_slider.dart';
import '../../../constants/assets.dart';
import '../widgets/goal_card.dart';
import '../../../utils/widgets/button.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import 'login.dart';

class Goals extends StatelessWidget {
  static String id = '/goals';
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              "What is your goal?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const Text(
              "It will help us to choose a best program for you",
              style: TextStyle(fontSize: 12, color: AppColor.grayOne),
            ),
            const SizedBox(height: 50),
            Flexible(
              child: CarouselSlider(
                items: [
                  GoalCard(
                    image: Assets.weightlifter,
                    goal: 'Improve shape',
                    goalDetails:
                        'I have a low amount of body fat and need / want to build more muscle',
                  ),
                  GoalCard(
                    image: Assets.skipper,
                    goal: 'Lean & Tone',
                    goalDetails:
                        'I’m “skinny fat”. look thin but have no shape. I want to add learn muscle in the right way',
                  ),
                  GoalCard(
                    image: Assets.fastrunner,
                    goal: 'Lose a Fat',
                    goalDetails:
                        'I have over 20 lbs to lose. I want to drop all this fat and gain muscle mass',
                  )
                ],
                options: CarouselOptions(
                    height: 590,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false),
              ),
            ),
            const SizedBox(height: 50),
            AppButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Login.id);
                },
                buttonText: 'Confirm')
          ],
        ),
      ),
    );
  }
}
