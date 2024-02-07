import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                          hintText: "Username",
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
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          gradient: const LinearGradient(
                            colors: <Color>[
                              Color(0xFF9C3FE4),
                              Color(0xffC65647)
                            ],
                          ),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black.withOpacity(0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Sign In",
                            style: GoogleFonts.poppins(
                              color: clWhite,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buttonSosmedLogin(
                            imagePath: "assets/icons/google_icon.png",
                            onPressed: () {},
                          ),
                          buttonSosmedLogin(
                            imagePath: "assets/icons/apple_icon.png",
                            onPressed: () {},
                          ),
                          buttonSosmedLogin(
                            imagePath: "assets/icons/fb_icon.png",
                            onPressed: () {},
                          ),
                        ],
                      )
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

  Container buttonSosmedLogin(
      {required String imagePath, required void Function() onPressed}) {
    return Container(
      width: 58,
      height: 44,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black.withOpacity(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        onPressed: onPressed,
        child: const SizedBox(),
      ),
    );
  }
}
