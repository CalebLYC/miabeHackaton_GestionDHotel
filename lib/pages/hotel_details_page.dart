import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:hotel/components/chambres_grid.dart';

import 'package:hotel/components/headWidget.dart';
import 'package:hotel/components/title.dart';

import 'package:hotel/models/Hotel.dart';
import 'package:hotel/utils/data.dart';

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
          child: Column(
            children: [
              HeadWidget(hotel: hotel, size: size),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(hotel.town),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.star_border_outlined,
                              color: Colors.orange,
                            )),
                        Text(hotel.stars!.toString()),
                      ],
                    ),
                  ],
                ),
              ),
              const TitleWidget(text: 'Localisation'),
              Container(
                width: size.width,
                height: size.height / 5,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/hotels/map.jpeg',
                    width: size.width - 20,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const TitleWidget(text: 'Nos équipements'),
              ChambresGrid(chambres: equipements),
            ],
          ),
        ),
      ),
    );
  }
}
