import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
              backgroundImage:
                  AssetImage('assets/images/neymar_treino_reu_60.jpg'),
              radius: 100),
          const SizedBox(height: 10),
          Text(
            'Neymar Junior',
            style: GoogleFonts.indieFlower(
                fontSize: 30, color: Colors.amber, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          buildPadding('11 12345-6789', Icons.phone_android),
          const SizedBox(height: 10),
          buildPadding('email@gmail.com', Icons.email),
        ],
      ),
    );
  }

  Padding buildPadding(String text, IconData icone) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Material(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            elevation: 8,
            color: Colors.blue,
            child: Stack(
              children: [
                Positioned.fill(
                  left: 20,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                        icone,
                      color: Colors.white,

                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        child: (TextField(
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Insira',
                            labelStyle: TextStyle(
                              color: Colors.white
                            )
                          ),
                          controller: TextEditingController(),
                          textAlign: TextAlign.left,
                          style: GoogleFonts.indieFlower(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox()
              ],
            ),
          ),
        );
  }
}
