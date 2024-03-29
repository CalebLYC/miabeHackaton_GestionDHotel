import 'package:flutter/material.dart';
import 'package:hotel/models/Hotel.dart';
import 'package:hotel/pages/hotel_details_page.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key, required this.hotel});

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
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
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                tag: 'page1-hotel-${hotel.id!}',
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Image.asset(
                    hotel.imageUrl,
                    width: 150.0,
                    height: 136.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        hotel.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          color: Colors.blue[900],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.location_on,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              hotel.town,
                              style: const TextStyle(
                                fontSize: 20,
                                fontFamily: 'Lato',
                                fontStyle: FontStyle.italic,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          '${hotel.views}(${hotel.reviews} Reviews)',
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < hotel.stars!; i++)
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 18,
                              ),
                            for (int i = 0; i < 5 - hotel.stars!; i++)
                              const Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 18,
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
        ),
      ),
    );
  }
}

class HotelCardWithoutHero extends StatelessWidget {
  const HotelCardWithoutHero(
      {super.key, required this.hotel, required this.isMiddle});

  final Hotel hotel;
  final bool isMiddle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Image.asset(
                hotel.imageUrl,
                width: 260,
                height: 195,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      hotel.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        fontSize: 21,
                        color: Colors.blue[900],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.blue,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: Text(
                            hotel.town,
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Lato',
                              fontStyle: FontStyle.italic,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text('${hotel.views}(${hotel.reviews} Reviews)'),
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < hotel.stars!; i++)
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                          for (int i = 0; i < 5 - hotel.stars!; i++)
                            const Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
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
      ),
    );
  }
}
