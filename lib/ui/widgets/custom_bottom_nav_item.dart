import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:airplane/cubit/page_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavItem extends StatelessWidget {
  final int index;
  final String imageUrl;
  final bool isSelected;

  const CustomBottomNavItem({
    Key? key,
    required this.imageUrl,
    required this.index,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: isSelected ? primaryColor : greyColor,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: isSelected ? primaryColor : transparantColor,
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
          ),
        ],
      ),
    );
  }
}
