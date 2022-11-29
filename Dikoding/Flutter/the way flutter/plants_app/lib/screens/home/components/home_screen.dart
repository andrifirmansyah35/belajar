import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, //mengatur bayangan appbar
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/.svg"),
          onPressed: () {},
        ),
      ),
    );
  }
}
