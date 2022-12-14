import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      // leading: IconButton(
      //   // icon: SvgPicture.asset("assets/icons/menu.svg"),
      //   icon: Icons(Icons.menu, color: Colors.red),
      //   onPressed: () {},
      // ),
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
    );
  }
}
