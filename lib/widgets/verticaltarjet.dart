import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class VerticalTarjet extends StatelessWidget {
  const VerticalTarjet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        NumTarjets(
          logo: 'assets/ebay.png',
          compania: "Ebay",
          role: "Data Science",
          region: "New zeland",
        ),
        NumTarjets(
          logo: 'assets/linkedin.png',
          compania: "Linkedim",
          role: "Ceo",
          region: "Washinston Seattle",
        ),
        NumTarjets(
          logo: 'assets/logotipo-de-apple.png',
          compania: "Apple",
          role: "c++ Expert",
          region: "Singapur",
        ),
        NumTarjets(
          logo: 'assets/meta.png',
          compania: "Meta",
          role: "Cloud Eng",
          region: "Sillicon valley",
        ),
        NumTarjets(
          logo: 'assets/pinterest.png',
          compania: "Pinterest",
          role: "Ai research",
          region: "Singapur",

        ),
      ],
      options: CarouselOptions(
        autoPlay: false,
        enlargeCenterPage: true,
        scrollDirection: Axis.vertical,
        initialPage: 2,
        aspectRatio: 3.0,
        height: 180.0,
      ),
    );
  }
}

class NumTarjets extends StatefulWidget {
  final String logo;
  final String compania;
  final String role;
  final String region;

  NumTarjets(
      {Key? key,
      required this.logo,
      required this.compania,
      required this.role,
      required this.region})
      : super(key: key);

  @override
  State<NumTarjets> createState() => _NumTarjetsState();
}

class _NumTarjetsState extends State<NumTarjets> {
  Icon hearticon = const Icon(
    Icons.favorite_border,
  );

  void changes() {
    setState(() {
      if (hearticon.icon == Icons.favorite_border) {
        hearticon = const Icon(
          Icons.favorite,
        );
      } else {
        hearticon = const Icon(
          Icons.favorite_border,
        );
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2.0, 2.0),
              blurRadius: 8.0,
            ),
          ],
        ),
        height: 100.0,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Row(
      
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                widget.logo,
                width: 50,
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                Text(widget.compania,
                    style: const TextStyle(
                      fontSize: 13.0,
                      color: Colors.grey,
                    )),
                Text(widget.role,
                    style: GoogleFonts.titanOne(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(197, 0, 0, 0),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Color.fromARGB(255, 128, 28, 28),
                      size: 15,
                    ),
                    Text(widget.region,
                        style: const TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey,
                        )
                        ),
                  ],
                ),
                    
                
              
              ]),
              IconButton(
                      onPressed: changes,
                      icon: hearticon,
                      color: const Color.fromARGB(255, 179, 47, 47),
                      iconSize: 30,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
