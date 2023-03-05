import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotel/components/chambreCard.dart';
import 'package:hotel/models/Equipement.dart';

class ChambresScroll extends StatelessWidget {
  const ChambresScroll({super.key, required this.rooms});
  final List<Equipement> rooms;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        key: UniqueKey(),
        itemCount: rooms.length,
        itemBuilder: (context, index) {
          return ChambreCard(
            chambre: rooms[index],
          );
        },
      ),
    );
  }
}
