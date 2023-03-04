import 'package:flutter/material.dart';
import 'package:hotel/components/hotel_card.dart';
import 'package:hotel/models/Hotel.dart';

class HotelScroolWidget extends StatelessWidget {
  const HotelScroolWidget({super.key, required this.hotels});
  final List<Hotel> hotels;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        key: UniqueKey(),
        itemCount: hotels.length,
        itemBuilder: (context, index) {
          return HotelCardWithoutHero(
            hotel: hotels[index],
          );
        },
      ),
    );
  }
}
