import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_file.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 30,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy, \nKezia Anne',
                  overflow: TextOverflow.ellipsis,
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Where to fly today?',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_profile.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget popularDestination() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            DestinationCard(
              name: 'Payung Teduh',
              city: 'Singapura',
              imageUrl: 'assets/image_destination1.png',
              rate: 4.8,
            ),
            DestinationCard(
              name: 'Menara',
              city: 'Japan',
              imageUrl: 'assets/image_destination2.png',
              rate: 4.8,
            ),
            DestinationCard(
              name: 'Hill Heyo',
              city: 'Monaco',
              imageUrl: 'assets/image_destination3.png',
              rate: 4.8,
            ),
            DestinationCard(
              name: 'White Houses',
              city: 'Spain',
              imageUrl: 'assets/image_destination4.png',
              rate: 4.8,
            ),
            DestinationCard(
              name: 'Lake Ciliwung',
              city: 'Tangerang',
              imageUrl: 'assets/image_destination5.png',
              rate: 4.8,
            ),
          ],
        ),
      ),
    );
  }

  Widget newDestination() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defaultMargin,
        right: defaultMargin,
        bottom: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New This Year',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          DestinationFile(
            name: 'Danau Beratan',
            city: 'Singaraja',
            imageUrl: 'assets/image_destination6.png',
            rate: 4.5,
          ),
          DestinationFile(
            name: 'Sydney Opera',
            city: 'Australia',
            imageUrl: 'assets/image_destination7.png',
            rate: 4.7,
          ),
          DestinationFile(
            name: 'Roma',
            city: 'Italy',
            imageUrl: 'assets/image_destination8.png',
            rate: 4.8,
          ),
          DestinationFile(
            name: 'Payung Teduh',
            city: 'Singapore',
            imageUrl: 'assets/image_destination9.png',
            rate: 4.5,
          ),
          DestinationFile(
            name: 'Hill Hey',
            city: 'Monaco',
            imageUrl: 'assets/image_destination10.png',
            rate: 4.7,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
