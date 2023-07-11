import '../../../constants/colors.dart';
import 'signup.dart';
import 'welcome.dart';

import '../widgets/textfield.dart';
import '../../../utils/widgets/button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/assets.dart';

class Login extends StatefulWidget {
  static String id = '/login';
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late bool _vPassord;
  late TextEditingController _email;
  late TextEditingController _password;
  late TapGestureRecognizer _registerRecognizer;

  void showPassword() {
    setState(() => _vPassord = !_vPassord);
  }

  @override
  void initState() {
    _vPassord = true;
    _email = TextEditingController();
    _password = TextEditingController();
    _registerRecognizer = TapGestureRecognizer()
      ..onTap = () {
        HapticFeedback.lightImpact();
        Navigator.of(context).pushNamed(Signup.id);
      };
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              children: [
                const Text(
                  'Hey there,',
                  style: TextStyle(color: AppColor.black, fontSize: 16),
                ),
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                AppTextField(
                  icon: Assets.mail,
                  hint: 'Email',
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
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Forgot your password',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(height: 285),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(6, 7),
                          blurRadius: 8,
                          color: AppColor.shadow)
                    ],
                    gradient:
                        const LinearGradient(colors: AppColor.gradientOne),
                  ),
                  child: TextButton.icon(
                    icon: const Icon(Icons.login, color: AppColor.white),
                    onPressed: () {
                      Navigator.of(context).pushNamed(Welcome.id);
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(99),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 129, vertical: 18),
                    ),
                    label: const Text(
                      'Login',
                      style: TextStyle(
                          color: AppColor.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
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
                          text: 'Register',
                          style: TextStyle(
                            foreground: Paint()
                              ..shader = const LinearGradient(
                                colors: AppColor.gradientTwo,
                              ).createShader(const Rect.fromLTWH(0, 0, 15, 12)),
                          ),
                          recognizer: _registerRecognizer),
                    ],
                  ),
                  style: const TextStyle(fontSize: 12, color: AppColor.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
