import 'package:flutter/material.dart';
import 'package:spotify_ui/components/buttons.dart';
import 'package:spotify_ui/constants/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: height / 2,
            width: double.infinity,
            decoration: BoxDecoration(
                color: ColorConstants.primaryColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 70, child: Image.asset('images/logo.png')),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Millions of songs, free on spotify',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: height / 1.8,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 20),
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        const Text(
                          'Login Account',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        const SizedBox(
                          height: 45,
                          child: TextInput(
                            hintText: 'Email or Username',
                            icon: Icons.email_outlined,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                            height: 45,
                            child: TextInput(
                              hintText: 'Password',
                              icon: Icons.visibility_off,
                            )),
                        SwitchListTile.adaptive(
                            activeColor: Colors.white,
                            activeTrackColor: ColorConstants.primaryColor,
                            title: Text('Remember Me ',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: ColorConstants.starterWhite)),
                            value: true,
                            onChanged: (value) {}),
                        Button(
                          title: 'Login',
                          onTap: () {},
                          color: ColorConstants.primaryColor,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                height: 1,
                                color: ColorConstants.starterWhite,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text('Or',
                                style: TextStyle(
                                    color: ColorConstants.starterWhite,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700)),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 1,
                                height: 1,
                                color: ColorConstants.starterWhite,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 40,
                                child: Image.asset('images/google+.png')),
                            const SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                                height: 40,
                                child: Image.asset('images/facebook.png'))
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ColorConstants.starterWhite),
                          textAlign: TextAlign.right,
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            height: 1,
                            color: ColorConstants.starterWhite,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don’t have an account?',
                              style: TextStyle(
                                  color: ColorConstants.starterWhite,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Sign up For Spotify',
                              style: TextStyle(
                                  color: ColorConstants.primaryColor,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TextInput extends StatelessWidget {
  final hintText;
  final IconData icon;
  final controller;

  const TextInput(
      {super.key, required this.hintText, required this.icon, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          labelText: hintText,
          labelStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          suffixIcon: Icon(icon),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(26)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(26),
              borderSide: BorderSide(color: ColorConstants.starterWhite)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(26),
              borderSide: BorderSide(color: ColorConstants.primaryColor))),
    );
  }
}
