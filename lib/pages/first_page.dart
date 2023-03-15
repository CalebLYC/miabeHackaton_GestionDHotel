import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotel/components/google_signin_button.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(
          maxHeight: size.height,
        ),
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg/bg1.jpg'),
            fit: BoxFit.cover,
          ),
          //borderRadius: BorderRadius.all(Radius)
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'LeadHotel',
                    style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Bienvenue au Togo, trouver votre hébergement',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    width: size.width * 0.7,
                    height: 50,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        elevation: MaterialStatePropertyAll(10),
                        padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 5)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Se connecter',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    width: size.width * 0.7,
                    height: 50,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        elevation: MaterialStatePropertyAll(10),
                        padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 5)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "S'inscrire",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Ou',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: GoogleSignInButton(onPressed: () {}),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
