import 'package:flutter/material.dart';
import 'package:hotel/components/hotels_grid.dart';
import 'package:hotel/components/hotels_scroll_widgets.dart';
import 'package:hotel/components/searchbar.dart';
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

    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      "Hi Petter",
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.notifications,
                      size: 50,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.3,
                child: Column(
                  children: [
                    const Text(
                      "Hotels populaires",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    HotelScroolWidget(hotels: popularsHotels)
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "In wich hotel would you want to stay",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Lato',
                  fontStyle: FontStyle.italic,
                ),
              ),
              const Text(
                'Hotels',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                margin: const EdgeInsets.all(3),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: SearchBar(),
                    ),
                    Container(
                      height: size.height * 0.9,
                      child: HotelsGrid(
                        hotels: hotels,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
