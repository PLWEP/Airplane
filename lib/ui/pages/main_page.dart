import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/pages/transaction_page.dart';
import 'package:airplane/ui/pages/wallet_page.dart';
import 'package:airplane/ui/pages/setting_page.dart';
import 'package:airplane/ui/widgets/custom_bottom_nav_item.dart';
import 'package:flutter/material.dart';
import 'package:airplane/cubit/page_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentPage) {
      switch (currentPage) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const WalletPage();
        case 3:
          return const SettingPage();
        default:
          return const HomePage();
      }
    }

    Widget customBottomNav(currentPage) {
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
            children: [
              CustomBottomNavItem(
                index: 0,
                imageUrl: 'assets/globe_logo.png',
                isSelected: currentPage == 0,
              ),
              CustomBottomNavItem(
                index: 1,
                imageUrl: 'assets/bookmark_logo.png',
                isSelected: currentPage == 1,
              ),
              CustomBottomNavItem(
                index: 2,
                imageUrl: 'assets/wallet_logo.png',
                isSelected: currentPage == 2,
              ),
              CustomBottomNavItem(
                index: 3,
                imageUrl: 'assets/setting_logo.png',
                isSelected: currentPage == 3,
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: backgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBottomNav(currentIndex),
            ],
          ),
        );
      },
    );
  }
}
