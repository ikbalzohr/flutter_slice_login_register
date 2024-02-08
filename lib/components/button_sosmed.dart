import 'package:flutter/material.dart';

class ButtonSosmed extends StatelessWidget {
  const ButtonSosmed({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buttonSosmed(
          imagePath: "assets/icons/google_icon.png",
          onPressed: () {},
        ),
        _buttonSosmed(
          imagePath: "assets/icons/apple_icon.png",
          onPressed: () {},
        ),
        _buttonSosmed(
          imagePath: "assets/icons/fb_icon.png",
          onPressed: () {},
        ),
      ],
    );
  }

  Container _buttonSosmed(
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
