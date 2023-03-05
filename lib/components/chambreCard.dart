import 'package:flutter/material.dart';

import 'package:hotel/models/Equipement.dart';
import 'package:hotel/pages/book_room.dart';

class ChambreCard extends StatelessWidget {
  const ChambreCard({super.key, required this.chambre});
  final Equipement chambre;

  void book_room(context) {
    if (chambre.categoryId == 1) {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => BookRoom(
            room: chambre,
          ),
          fullscreenDialog: true,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(3),
            child: GestureDetector(
              onTap: (() => book_room(context)),
              /*child: Hero(
                tag: chambre.id!,*/
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                child: Image.asset(
                  chambre.imageUrl,
                  width: 100.0,
                  height: 40.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  chambre.name != null
                      ? Text(
                          chambre.name!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            fontSize: 10,
                            color: Colors.blue[900],
                          ),
                        )
                      : Text('Equipement'),
                  chambre.location != null
                      ? Text(
                          chambre.location!,
                          style: const TextStyle(
                            fontSize: 10,
                            fontFamily: 'Lato',
                            fontStyle: FontStyle.italic,
                            color: Colors.black26,
                          ),
                        )
                      : Text(''),
                  chambre.categoryId == 1
                      ? Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${chambre.price.toString()} FCFA',
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () => book_room(context),
                                  icon: const Icon(Icons.calendar_month),
                                  iconSize: 20,
                                  color: Colors.blue,
                                  tooltip: 'Réserver',
                                )
                              ],
                            ),
                            Text(
                              'Disponible',
                              style: TextStyle(
                                decoration: !chambre.isAvailable!
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                              ),
                            ),
                          ],
                        )
                      : Text(''),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
