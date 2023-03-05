import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotel/components/book_card.dart';
import 'package:hotel/components/book_head.dart';
import 'package:hotel/components/chambres_grid.dart';
import 'package:hotel/components/title.dart';
import 'package:hotel/models/Equipement.dart';
import 'package:hotel/components/chambres_scroll.dart';
import 'package:hotel/utils/data.dart';

class BookRoom extends StatelessWidget {
  const BookRoom({super.key, required this.room});
  final Equipement room;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Réserver votre chambre"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height * 2,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BookHeadWidget(room: room, size: size),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TitleWidget(text: 'Nos différents Equipements'),
              ),
              ChambresScroll(rooms: equipements),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TitleWidget(text: 'Réservation de chambres'),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: BookCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
