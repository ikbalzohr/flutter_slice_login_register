import 'package:flutter/material.dart';

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 610,
          width: Size.infinite.width,
          child: FittedBox(
              fit: BoxFit.cover,
              child: Stack(
                children: [
                  Image.asset('assets/images/background.png'),
                  Image.asset("assets/images/object.png")
                ],
              )),
        ),
      ],
    );
  }
}
