import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slice_login_register/components/button_large.dart';
import 'package:flutter_slice_login_register/components/button_sosmed.dart';
import 'package:flutter_slice_login_register/components/text_field_component.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_slice_login_register/components/background_screen.dart';
import 'package:flutter_slice_login_register/components/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset('assets/images/illustration.png'),
          const BackgroundScreen(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 42),
            child: Column(
              children: [
                const SizedBox(height: 265),
                Text(
                  "Welcome Back!",
                  style: GoogleFonts.poppins(
                    fontSize: 40,
                    color: clWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "welcome back we missed you",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: clGrey,
                  ),
                ),
                const SizedBox(height: 22),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Username",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: clGrey,
                        ),
                      ),
                      Container(
                        height: 55,
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        child: const TextFieldComponent(
                          hintText: "Username",
                          prefixIconPath: "assets/svg/person.svg",
                        ),
                      ),
                      Text(
                        "Password",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: clGrey,
                        ),
                      ),
                      Container(
                        height: 55,
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        child: const TextFieldComponent(
                          hintText: "Password",
                          prefixIconPath: "assets/svg/key.svg",
                          sufixIconPath: "assets/svg/eye_disable.svg",
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password?",
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              color: clGrey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      ButtonLarge(title: "Sign In", onPressed: () {}),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 98,
                            child: Image.asset("assets/images/line_left.png"),
                          ),
                          Text(
                            "Or continue with",
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              color: clGrey,
                            ),
                          ),
                          SizedBox(
                            width: 98,
                            child: Image.asset("assets/images/line_right.png"),
                          )
                        ],
                      ),
                      const SizedBox(height: 18),
                      const ButtonSosmed()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
