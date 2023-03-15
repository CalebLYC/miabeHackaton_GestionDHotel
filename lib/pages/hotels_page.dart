import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:hotel/components/hotels_grid.dart';
import 'package:hotel/components/hotels_scroll_widgets.dart';
import 'package:hotel/components/searchbar.dart';
import 'package:hotel/components/separator.dart';
import 'package:hotel/utils/data.dart';

class HotelsPage extends StatefulWidget {
  const HotelsPage({super.key});

  @override
  State<HotelsPage> createState() => _HotelsPageState();
}

class _HotelsPageState extends State<HotelsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height * 2,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 10, left: 15, right: 15),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.login,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                    SearchBar(),
                    IconButton(
                      onPressed: () {},
                      icon: Badge(
                        badgeStyle: const BadgeStyle(
                          badgeColor: Colors.red,
                        ),
                        badgeContent: Text(
                          5.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.grey,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.48,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(1),
                    child: Text(
                      "Hotels populaires",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  HotelsScrollWidget(hotels: popularsHotels)
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 5, top: 0),
              child: SeparationWidget(),
            ),
            Container(
              height: size.height * 0.8,
              child: HotelsGrid(
                hotels: hotels,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
