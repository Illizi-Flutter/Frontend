import 'package:flutter/cupertino.dart';

class CustomBackGroundImage extends StatelessWidget {
  const CustomBackGroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage
          (
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
