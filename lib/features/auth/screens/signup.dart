import 'package:fitnextx/constants/assets.dart';
import 'package:fitnextx/constants/colors.dart';
import 'package:fitnextx/features/auth/widgets/textfield.dart';
import 'package:fitnextx/utils/widgets/button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late TextEditingController _fName;
  late TextEditingController _lName;
  late TextEditingController _email;
  late TextEditingController _password;
  late GlobalKey<FormState> _formKey;
  late TapGestureRecognizer _privacyRecognizer;
  late TapGestureRecognizer _termsRecognizer;
  late TapGestureRecognizer _loginRecognizer;
  late bool _vPassord;
  late bool _acceptedTerms;

  void accept(value) {
    setState(() => _acceptedTerms = !_acceptedTerms);
  }

  @override
  void initState() {
    _acceptedTerms = false;
    _vPassord = true;
    _formKey = GlobalKey<FormState>();
    _fName = TextEditingController();
    _lName = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    _privacyRecognizer = TapGestureRecognizer()
      ..onTap = () => HapticFeedback.lightImpact();
    _termsRecognizer = TapGestureRecognizer()
      ..onTap = () => HapticFeedback.lightImpact();
    _loginRecognizer = TapGestureRecognizer()
      ..onTap = () {
        HapticFeedback.lightImpact();
        context.goNamed('login');
      };
    super.initState();
  }

  @override
  void dispose() {
    _fName.dispose();
    _lName.dispose();
    _email.dispose();
    _password.dispose();
    _formKey.currentState?.dispose();
    _privacyRecognizer.dispose();
    _termsRecognizer.dispose();
    _loginRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Text(
                    'Hey there,',
                    style: TextStyle(color: AppColor.black, fontSize: 16),
                  ),
                  const Text(
                    'Create an Account',
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  AppTextField(
                    controller: _fName,
                    icon: Assets.profile,
                    hint: 'First Name',
                    keyboard: TextInputType.name,
                  ),
                  AppTextField(
                    controller: _lName,
                    icon: Assets.profile,
                    hint: 'Last Name',
                    keyboard: TextInputType.name,
                  ),
                  AppTextField(
                    controller: _email,
                    icon: Assets.mail,
                    hint: 'Email',
                    keyboard: TextInputType.emailAddress,
                  ),
                  AppTextField(
                    controller: _password,
                    icon: Assets.lock,
                    hint: 'Password',
                    showText: _vPassord,
                    suffixIcon: GestureDetector(
                      onTap: showPassword,
                      child: _vPassord
                          ? Image.asset(Assets.hide)
                          : Image.asset(Assets.show),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _acceptedTerms,
                        onChanged: accept,
                        activeColor: AppColor.pGradOne,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        side: const BorderSide(color: AppColor.grayTwo),
                      ),
                      Flexible(
                        child: Text.rich(
                          TextSpan(
                            text: 'By continuing you accept our ',
                            children: [
                              TextSpan(
                                  text: ' Privacy Policy ',
                                  style: const TextStyle(
                                      decoration: TextDecoration.underline),
                                  recognizer: _privacyRecognizer),
                              const TextSpan(text: 'and '),
                              TextSpan(
                                  text: 'Term of Use ',
                                  style: const TextStyle(
                                      decoration: TextDecoration.underline),
                                  recognizer: _termsRecognizer),
                            ],
                          ),
                          style: const TextStyle(
                              fontSize: 12, color: AppColor.grayTwo),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 150),
                  AppButton(
                      onPressed: () {
                        _formKey.currentState!.save();
                        (_formKey.currentState!.validate() &&
                                _acceptedTerms != false)
                            ? context.goNamed('profile')
                            : ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Incomplete information'),
                                  duration: Duration(milliseconds: 500),
                                ),
                              );
                      },
                      buttonText: 'Register'),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Flexible(
                        child: Divider(height: 2),
                      ),
                      Text(' Or '),
                      Flexible(
                        child: Divider(height: 2),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: AppColor.grayThree),
                              borderRadius: BorderRadius.circular(14)),
                          padding: const EdgeInsets.all(15),
                        ),
                        child: Image.asset(
                          Assets.google,
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(width: 30),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: AppColor.grayThree),
                              borderRadius: BorderRadius.circular(14)),
                          padding: const EdgeInsets.all(15),
                        ),
                        child: Image.asset(
                          Assets.facebook,
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Text.rich(
                    TextSpan(
                      text: 'Already have an account? ',
                      children: [
                        TextSpan(
                            text: 'Login',
                            style: TextStyle(
                              foreground: Paint()
                                ..shader = const LinearGradient(
                                  colors: AppColor.gradientTwo,
                                ).createShader(
                                    const Rect.fromLTWH(0, 0, 15, 12)),
                            ),
                            recognizer: _loginRecognizer),
                      ],
                    ),
                    style: const TextStyle(fontSize: 12, color: AppColor.black),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showPassword() {
    setState(() => _vPassord = !_vPassord);
  }
}
