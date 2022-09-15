import 'package:airplane/shared/theme.dart';
import 'package:flutter/cupertino.dart';

class CustomBottomNavItem extends StatelessWidget {
  final bool isSelected;
  final String imageUrl;

  const CustomBottomNavItem(
      {Key? key, required this.imageUrl, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
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
    );
  }
}
