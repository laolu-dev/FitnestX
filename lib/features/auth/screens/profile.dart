import '../../../constants/assets.dart';
import '../../../constants/colors.dart';
import '../../../constants/logger.dart';
import 'goals.dart';
import '../widgets/auth_clip.dart';
import '../widgets/textfield.dart';
import '../../../utils/widgets/button.dart';
import '../../../utils/widgets/button_two.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatefulWidget {
  static String id = '/profile';
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  late TextEditingController _weight;
  late TextEditingController _height;
  late GlobalKey<FormState> _profileForm;
  late bool _weightUnit;
  late bool _heightUnit;
  late String _dob;

  final List<DropdownMenuItem<String>> _genderList = [
    const DropdownMenuItem(value: 'Male', child: Text('Male')),
    const DropdownMenuItem(value: 'Female', child: Text('Female'))
  ];

  @override
  void initState() {
    _dob = 'Date of Birth';
    _weightUnit = true;
    _heightUnit = true;
    _profileForm = GlobalKey<FormState>();
    _weight = TextEditingController();
    _height = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _profileForm.currentState!.dispose();
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
                  child: Form(
                    key: _profileForm,
                    child: Column(
                      children: [
                        DropdownButtonFormField(
                          value: 'Male',
                          items: _genderList,
                          onChanged: (value) {
                            logger.d("Current gender: $value");
                          },
                          borderRadius: BorderRadius.circular(22),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          decoration: InputDecoration(
                            prefixIcon: Image.asset(Assets.gender,
                                width: 18, height: 18),
                            fillColor: AppColor.border,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(22),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            final dob = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1970),
                              lastDate: DateTime(2100),
                            );
                            var dobTwo = dob ?? DateTime(2000, 01, 01);
                            setState(() {
                              _dob =
                                  '${dobTwo.day}/${dobTwo.month}/${dobTwo.year}';
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 15, top: 15),
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
                            AppButtonTwo(
                                onPressed: () =>
                                    setState(() => _weightUnit = !_weightUnit),
                                buttonText: _weightUnit ? 'KG' : 'LB')
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
                                validator: (value) {
                                  // if (value!.isEmpty) {
                                  //   return 'Enter your height';
                                  // }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(width: 15),
                            AppButtonTwo(
                                onPressed: () =>
                                    setState(() => _heightUnit = !_heightUnit),
                                buttonText: _heightUnit ? 'CM' : 'FT')
                          ],
                        ),
                        const SizedBox(height: 30),
                        AppButton(
                            onPressed: () {
                              if (_profileForm.currentState!.validate()) {
                                Navigator.of(context).pushNamed(Goals.id);
                              }
                              //  else {
                              //   ScaffoldMessenger.of(context).showSnackBar(
                              //     const SnackBar(
                              //       content: Text('Incomplete information'),
                              //       duration: Duration(milliseconds: 500),
                              //     ),
                              //   );
                              // }
                            },
                            buttonText: 'Next >')
                      ],
                    ),
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
