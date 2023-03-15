import 'package:flutter/material.dart';
import 'package:hotel/components/favorite_card.dart';
import 'package:hotel/components/hotel_card.dart';
import 'package:hotel/models/Hotel.dart';

class FavoritesList extends StatelessWidget {
  const FavoritesList({super.key, required this.hotels});
  final List<Hotel> hotels;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height * 0.75,
        maxHeight: MediaQuery.of(context).size.height,
      ),
      child: ListView.builder(
        itemCount: hotels.length,
        itemBuilder: (context, index) => FavoriteCard(hotel: hotels[index]),
      ),
    );
  }
}
