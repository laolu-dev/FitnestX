import 'package:fitnextx/constants/assets.dart';
import 'package:fitnextx/constants/colors.dart';
import 'package:fitnextx/features/auth/widgets/clip_path/auth_clip_one.dart';
import 'package:fitnextx/features/auth/widgets/textfield.dart';
import 'package:fitnextx/utils/widgets/button.dart';
import 'package:fitnextx/utils/widgets/button_two.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  late TextEditingController _weight;
  late TextEditingController _height;
  late String _weightUnit;
  late String _heightUnit;
  late String _dob;

  @override
  void initState() {
    _dob = 'Date of Birth';
    _weight = TextEditingController();
    _height = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _weight.dispose();
    _height.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Stack(
                  children: [
                    ClipPath(
                      clipper: AuthClipOne(),
                      child: Container(
                        height: 260,
                        width: screenWidth,
                        decoration: const BoxDecoration(
                          gradient:
                              LinearGradient(colors: AppColor.gradientOne),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 85,
                      child: Image.asset(Assets.womanlifter),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const Text(
                  "Let’s complete your profile",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const Text(
                  "It will help us to know more about you!",
                  style: TextStyle(fontSize: 12, color: AppColor.grayOne),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      // AppTextField(
                      //   onTap: () {},
                      //   hint: 'Choose Gender',
                      //   icon: Assets.gender,
                      // ),
                      GestureDetector(
                        onTap: () async {
                          final dob = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1970),
                            lastDate: DateTime(2100),
                          );
                          setState(() {
                            _dob = '${dob!.day}/${dob.month}/${dob.year}';
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 12),
                          decoration: BoxDecoration(
                              color: AppColor.border,
                              borderRadius: BorderRadius.circular(14)),
                          child: Row(
                            children: [
                              Image.asset(Assets.calendar),
                              const SizedBox(width: 10),
                              Expanded(child: Text(_dob))
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: AppTextField(
                              controller: _weight,
                              icon: Assets.height,
                              keyboard: TextInputType.number,
                              hint: 'Your Weight',
                              onTap: () {},
                            ),
                          ),
                          const SizedBox(width: 15),
                          AppButtonTwo(onPressed: () {}, buttonText: 'KG')
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: AppTextField(
                              controller: _height,
                              icon: Assets.height,
                              keyboard: TextInputType.number,
                              hint: 'Your Height',
                              onTap: () {},
                            ),
                          ),
                          const SizedBox(width: 15),
                          AppButtonTwo(onPressed: () {}, buttonText: 'CM')
                        ],
                      ),
                      const SizedBox(height: 30),
                      AppButton(onPressed: () {}, buttonText: 'Next >')
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
