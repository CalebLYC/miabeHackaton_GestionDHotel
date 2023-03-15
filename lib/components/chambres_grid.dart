import 'package:flutter/material.dart';
import 'package:hotel/components/chambreCard.dart';
import 'package:hotel/models/Equipement.dart';
import 'package:hotel/utils/data.dart';

class ChambresGrid extends StatelessWidget {
  const ChambresGrid({super.key, required this.chambres});
  final List<Equipement> chambres;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height * 0.5,
        maxHeight: MediaQuery.of(context).size.height * 0.75,
      ),
      /*child: GridView.builder(
        key: UniqueKey(),
        itemCount: chambres.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
        ),
        itemBuilder: ((context, index) {
          return ChambreCard(chambre: chambres[index]);
        }),
      ),*/
      child: ListView.builder(
        itemCount: equipements.length,
        itemBuilder: (context, index) => ChambreCard(chambre: chambres[index]),
      ),
    );
  }
}
