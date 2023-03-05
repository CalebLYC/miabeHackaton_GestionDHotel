import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotel/models/Hotel.dart';
import 'package:hotel/utils/data.dart';

class HeadWidget extends StatelessWidget {
  HeadWidget({super.key, required this.hotel, required this.size});
  final CarouselController controller = CarouselController();
  final Hotel hotel;
  final Size size;
  bool defilement = true;
  final List<String> urls =
      equipements.sublist(1, 5).map((e) => e.imageUrl).toList();

  @override
  Widget build(BuildContext context) {
    urls.insert(0, hotel.imageUrl);
    return CarouselSlider(
      carouselController: controller,
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 7),
        aspectRatio: size.width / size.height * 3,
        enlargeCenterPage: true,
      ),
      items: urls.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return /*Hero(
              tag: 'page2-hotel-${hotel.id!}',
              child:*/
                Container(
              width: size.width,
              height: size.width / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.elliptical(size.width, size.width / 4)),
                image: DecorationImage(
                  image: AssetImage(
                    url,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          defilement
                              ? controller.stopAutoPlay()
                              : controller.startAutoPlay();
                          defilement = !defilement;
                        },
                        tooltip:
                            '${defilement ? 'Arrêter' : 'Reprendre'} le déroulement du carousel',
                        icon: const Icon(Icons.pause),
                        color: Colors.white,
                        iconSize: 25,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border_outlined),
                        color: Colors.white,
                        iconSize: 25,
                      ),
                    ],
                  ),
                  Text(
                    hotel.name,
                    style: const TextStyle(
                      fontSize: 25,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    hotel.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 13,
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              //),
            );
          },
        );
      }).toList(),
    );
  }
}
