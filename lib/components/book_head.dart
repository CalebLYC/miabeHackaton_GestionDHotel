import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotel/models/Equipement.dart';
import 'package:hotel/pages/book_room.dart';

class BookHeadWidget extends StatelessWidget {
  const BookHeadWidget({super.key, required this.room, required this.size});
  final Equipement room;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.5),
      child: Container(
        width: size.width,
        height: size.height / 3,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(room.imageUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => BookRoom(room: room),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                    color: Colors.white,
                    iconSize: 25,
                    tooltip: 'Une autre chambre',
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_outlined),
                    color: Colors.white,
                    iconSize: 25,
                    tooltip: 'J\aime',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  Text(
                    room.name!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  room.description != null
                      ? Text(
                          room.description!,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontFamily: 'Lato',
                            fontStyle: FontStyle.italic,
                          ),
                        )
                      : const Text(''),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
