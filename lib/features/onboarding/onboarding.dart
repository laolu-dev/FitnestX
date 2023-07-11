

import '../auth/screens/signup.dart';
import 'widgets/button.dart';
import 'widgets/onboard/page_four.dart';
import 'widgets/onboard/page_one.dart';
import 'widgets/onboard/page_three.dart';
import 'widgets/onboard/page_two.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  static String id = '/splash/onboard';
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding>
    with SingleTickerProviderStateMixin {
  late int _index;
  late double _angle;
  late Animation<double> anim;
  final boardContent = [
    const BoardOne(),
    const BoardTwo(),
    const BoardThree(),
    const BoardFour()
  ];
  late AnimationController _controller;

  void changeBoardContent() {
    _index++;
    _index > 0 ? _angle++ : _angle = 0;

    setState(() {});
    if (_index > 3) {
      _index = 0;
      _angle = 1;

      Navigator.of(context).pushNamed(Signup.id);
    }
  }

  @override
  void initState() {
    super.initState();
    _index = 0;
    _angle = 1;
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    // anim = Tween<double>(begin: 1, end: 4).animate(_controller)
    //   ..addListener(() {
    //     setState(() {
    //       _angle = _controller.value;
    //     });
    //   });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: boardContent[_index],
      floatingActionButton: OnboardButton(
        angle: _angle,
        onTap: changeBoardContent,
      ),
    );
  }
}
