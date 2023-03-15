import 'package:flutter/material.dart';
import 'package:hotel/components/hotel_card.dart';
import 'package:hotel/models/Hotel.dart';

class HotelsGrid extends StatelessWidget {
  const HotelsGrid({super.key, required this.hotels});
  final List<Hotel> hotels;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height * 0.75,
        maxHeight: MediaQuery.of(context).size.height,
      ),
      /*child: GridView.builder(
        key: UniqueKey(),
        itemCount: hotels.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
        ),
        itemBuilder: ((context, index) {
          return HotelCard(hotel: hotels[index]);
        }),*/
      child: ListView.builder(
        itemCount: hotels.length,
        itemBuilder: (context, index) => HotelCard(hotel: hotels[index]),
      ),
    );
  }
}
