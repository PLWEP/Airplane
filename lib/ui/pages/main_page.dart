import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_bottom_nav_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomBottomNavItem(
                imageUrl: 'assets/globe_logo.png',
                isSelected: true,
              ),
              CustomBottomNavItem(
                imageUrl: 'assets/bookmark_logo.png',
              ),
              CustomBottomNavItem(
                imageUrl: 'assets/wallet_logo.png',
              ),
              CustomBottomNavItem(
                imageUrl: 'assets/setting_logo.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          const Text('Main Page'),
          customBottomNav(),
        ],
      ),
    );
  }
}
