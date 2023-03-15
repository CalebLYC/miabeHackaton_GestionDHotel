import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotel/components/hotel_card.dart';
import 'package:hotel/models/Hotel.dart';

class HotelsScrollWidget extends StatefulWidget {
  const HotelsScrollWidget({super.key, required this.hotels});
  final List<Hotel> hotels;

  @override
  State<HotelsScrollWidget> createState() =>
      _HotelsScrollWidgetState(hotels: hotels);
}

class _HotelsScrollWidgetState extends State<HotelsScrollWidget> {
  _HotelsScrollWidgetState({required this.hotels});
  final List<Hotel> hotels;
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool _pageHasContentDimensions = false;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (_pageController.position.hasContentDimensions &&
          !_pageHasContentDimensions) {
        setState(() {
          _pageHasContentDimensions = true;
        });
      }
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.4,
      child: CarouselSlider.builder(
        itemCount: hotels.length,
        itemBuilder: (BuildContext context, int index, int j) {
          return HotelCardWithoutHero(
            hotel: hotels[index],
            isMiddle: _currentPage == index,
          );
        },
        options: CarouselOptions(
          height: 400,
          enableInfiniteScroll: true,
          viewportFraction: 0.7,
          onPageChanged: (index, reason) {
            setState(() {
              _currentPage = index;
            });
          },
        ),
      ),
    );
  }
}
