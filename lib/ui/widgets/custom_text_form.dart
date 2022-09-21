import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String title;
  final String hinText;
  final bool obsecureText;
  const CustomTextForm(
      {Key? key,
      required this.title,
      required this.hinText,
      this.obsecureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: obsecureText,
            cursorColor: blackColor,
            decoration: InputDecoration(
              hintText: hinText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
