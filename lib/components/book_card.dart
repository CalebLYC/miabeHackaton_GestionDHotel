import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:hotel/components/field.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class BookCard extends StatefulWidget {
  const BookCard({super.key});

  @override
  State<BookCard> createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController adultsController = TextEditingController();
  final TextEditingController kidsController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController creditsController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  final TextEditingController preferencesController = TextEditingController();
  DateTime date = DateTime.now();
  DateTime dateExpiration = DateTime.now();
  PhoneNumber phoneNumber =
      PhoneNumber(countryISOCode: '228', countryCode: '228', number: '0');

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1.3,
      child: Card(
        elevation: 3,
        child: Form(
          child: Column(
            children: [
              Field(
                text: 'Entrer votre nom complet',
                controller: nameController,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: DateTimeFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.black45),
                    errorStyle: TextStyle(color: Colors.redAccent),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.event_note),
                    labelText: 'Date de réservation',
                  ),
                  mode: DateTimeFieldPickerMode.dateAndTime,
                  autovalidateMode: AutovalidateMode.always,
                  validator: (e) =>
                      (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                  onDateSelected: (DateTime value) {
                    date = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: DateTimeFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.black45),
                    errorStyle: TextStyle(color: Colors.redAccent),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.event_note),
                    labelText: "Date d'expiration",
                  ),
                  mode: DateTimeFieldPickerMode.dateAndTime,
                  autovalidateMode: AutovalidateMode.always,
                  validator: (e) =>
                      (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                  onDateSelected: (DateTime value) {
                    dateExpiration = value;
                  },
                ),
              ),
              Field(
                text: "Nombre d'adultes",
                controller: adultsController,
              ),
              Field(
                text: "Nombre d'enfants",
                controller: kidsController,
              ),
              IntlPhoneField(
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'TG',
                onChanged: (phone) {
                  phoneNumber = phone;
                },
              ),
              Field(
                text: 'Adresse email',
                controller: emailController,
              ),
              Field(
                text: 'Numéro de carte de crédit',
                controller: creditsController,
              ),
              Field(
                text: 'Code de sécurité',
                controller: codeController,
              ),
              Field(
                text: 'Préférences ou demandes spéciales',
                controller: preferencesController,
              ),
              Container(
                width: double.infinity,
                height: 80,
                padding: const EdgeInsets.all(15),
                child: TextButton(
                  onPressed: () {
                    print("Nom: ${nameController.text}");
                    print("Date de réservation: $date");
                    print("Nombre d'adultes': ${adultsController.text}");
                    print("Nombre d'enfants: ${kidsController.text}");
                    print("Numéro de téléphone: ${phoneNumber.completeNumber}");
                    print("Adresse email: ${nameController.text}");
                    print(
                        "Numéro de carte de crédit: ${creditsController.text}");
                    print("Code de sécurité: ${codeController.text}");
                    print(
                        "Préférences de demandes: ${preferencesController.text}");
                    print("D'ate d'expiration: $dateExpiration");

                    setState(() {
                      nameController.clear();
                      codeController.clear();
                      creditsController.clear();
                      preferencesController.clear();
                      emailController.clear();
                      kidsController.clear();
                      adultsController.clear();
                    });
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  ),
                  child: const Text(
                    "Réserver",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
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
