import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  final List<Map<String, String>> levels = [
    {"title": "Inactive", "description": "I have never trained"},
    {"title": "Beginner", "description": "I have trained a few times"},
    {"title": "Advanced", "description": "I train regularly"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/yyy.jpg"), // Corrected asset path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Text(
                    "Hard",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 32,
                      color: Colors.purple,
                      letterSpacing: 1.8,
                    ),
                  ),
                ),
                Container(width: 6.0),
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Text(
                    "ELEMENT",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 32,
                      color: Colors.purple,
                      letterSpacing: 1.8,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About You",
                    style: GoogleFonts.lato(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "We'd like to learn about your\nworkout preferences.",
                    style: GoogleFonts.lato(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
                      height: 226,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: levels.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              height: 226,
                              width: 195,
                              decoration: BoxDecoration(
                                color: Color(0xff232441),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0, top: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "I am",
                                      style: GoogleFonts.lato(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xDECFCFFF),
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      levels[index]["title"]!,
                                      style: GoogleFonts.lato(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xDECFCFFF),
                                      ),
                                    ),
                                    SizedBox(height: 20.0),
                                    Text(
                                      levels[index]["description"]!,
                                      style: GoogleFonts.lato(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xDECFCFFF),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 40.0, top: 40, bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Skip Intro",
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeView()),
                      );
                    },
                    child: Container(
                      width: 139,
                      height: 39,
                      decoration: BoxDecoration(
                        color: Color(0xFF400876),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: Text(
                          "Next",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
