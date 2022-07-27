import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:project1/widgets/carousel.dart';
import 'package:project1/widgets/recent.dart';
import 'package:project1/widgets/verticaltarjet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            size: 30,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.blue,
      ),

      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "whats up",
                    style: GoogleFonts.titanOne(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(41, 0, 0, 0),
                    ),
                  ),
                  Text("Find your next",
                      style: GoogleFonts.titanOne(
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(225, 0, 0, 0),
                      )),
                  Text("design job",
                      style: GoogleFonts.titanOne(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(59, 0, 0, 0),
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  Text("For you",
                      style: GoogleFonts.titanOne(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(41, 0, 0, 0),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Carousel(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Recent(),
                  const VerticalTarjet(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
