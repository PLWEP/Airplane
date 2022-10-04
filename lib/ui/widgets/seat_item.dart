import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class SeatItem extends StatelessWidget {
  final int status;

  const SeatItem({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return availableColor;
        case 1:
          return primaryColor;
        case 2:
          return unavailableColor;
        default:
          return unavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return primaryColor;
        case 1:
          return primaryColor;
        case 2:
          return unavailableColor;
        default:
          return unavailableColor;
      }
    }

    child() {
      switch (status) {
        case 1:
          return Center(
            child: Text(
              'You',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          );
        default:
          return const SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderColor(),
        ),
      ),
      child: child(),
    );
  }
}
