import 'package:flutter/material.dart';
import 'package:hotel/models/Hotel.dart';
import 'package:hotel/pages/hotel_details_page.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key, required this.hotel});

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      //margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(3),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => HotelDetailsPage(
                      hotel: hotel,
                    ),
                  ),
                );
              }),
              child: Hero(
                tag: 'page1-hotel-${hotel.id!}',
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                  child: Image.asset(
                    hotel.imageUrl,
                    width: 120.0,
                    height: 60.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    hotel.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      fontSize: 10,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    hotel.town,
                    style: const TextStyle(
                      fontSize: 10,
                      fontFamily: 'Lato',
                      fontStyle: FontStyle.italic,
                      color: Colors.black26,
                    ),
                  ),
                  Text('${hotel.views}(${hotel.reviews} Reviews)'),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < hotel.stars!; i++)
                          const Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 12,
                          ),
                        for (int i = 0; i < 5 - hotel.stars!; i++)
                          const Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 12,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HotelCardWithoutHero extends StatelessWidget {
  const HotelCardWithoutHero({super.key, required this.hotel});

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(3),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => HotelDetailsPage(
                      hotel: hotel,
                    ),
                  ),
                );
              }),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                child: Image.asset(
                  hotel.imageUrl,
                  width: 120.0,
                  height: 70.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotel.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      fontSize: 10,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    hotel.town,
                    style: const TextStyle(
                      fontSize: 10,
                      fontFamily: 'Lato',
                      fontStyle: FontStyle.italic,
                      color: Colors.black26,
                    ),
                  ),
                  Text(
                    '${hotel.views}(${hotel.reviews} Reviews)',
                    style: const TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < hotel.stars!; i++)
                          const Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 19,
                          ),
                        for (int i = 0; i < 5 - hotel.stars!; i++)
                          const Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 19,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
