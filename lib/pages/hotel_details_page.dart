import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotel/components/hotels_grid.dart';
import 'package:hotel/models/Hotel.dart';

class HotelDetailsPage extends StatefulWidget {
  const HotelDetailsPage({super.key, required this.hotel});
  final Hotel hotel;

  @override
  State<HotelDetailsPage> createState() => _HotelDetailsPageState(hotel: hotel);
}

class _HotelDetailsPageState extends State<HotelDetailsPage> {
  _HotelDetailsPageState({required this.hotel});
  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(hotel.name),
      ),
      body: Container(
        height: size.height,
        child: SingleChildScrollView(
          child: Column(children: []),
        ),
      ),
    );
  }
}
