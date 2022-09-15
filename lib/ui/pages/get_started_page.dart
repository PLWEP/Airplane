import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_get_started.png'),
              ),
            ),
          ),
          Column(
            children: [
              Text(
                'Fly Like A Bird',
                style: whiteTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Explore new world with us ad let\nyourself get an amazing experiences',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 220,
                height: 55,
                margin: const EdgeInsets.only(
                  top: 50,
                  bottom: 80,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  child: Text(
                    'Get Started',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
