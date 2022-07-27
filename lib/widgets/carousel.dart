import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project1/widgets/Tarjet.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Tarjet(
          color:  const Color.fromARGB(80, 57, 49, 173),
          logo: 'assets/google.png',
          companyname: 'Google',
          role: 'Software Engineer',
          region: 'San Francisco',
        ),
        Tarjet(
          color: const Color.fromARGB(104, 161, 134, 211),
          logo: 'assets/unix.png',
          companyname: 'Linux',
          role: 'Backend Developer',
          region: 'Mont view',
        ),
        Tarjet(
          color: const Color.fromARGB(104, 134, 211, 144),
          logo: 'assets/spotify.png',
          companyname: 'Spotify',
          role: 'Cloud Engineer',
          region: 'Ucrania',
        ),
        Tarjet(
          color: const Color.fromARGB(104, 151, 134, 211),
          logo: 'assets/microsoft.png',
          companyname: 'Microsoft',
          role: 'Data Analyst',
          region: 'Seattle',
        ),
        Tarjet(
            color: const Color.fromARGB(104, 211, 134, 194),
            logo: 'assets/airbnb.png',
            companyname: 'Airbnb',
            role: 'Data Engineer',
            region: 'Palo Alto'),
        Tarjet(
          color: const Color.fromARGB(104, 211, 134, 134),
          logo: 'assets/netflix.png',
          companyname: 'Netflix',
          role: 'Frontend Developer',
          region: 'Mont view',
        ),
        Tarjet(
          color: const Color.fromARGB(104, 211, 178, 134),
          logo: 'assets/nintendo.png',
          companyname: 'Nintendo',
          role: 'Game Developer',
          region: 'Corea',
        ),
        Tarjet(
          color: const Color.fromARGB(150, 133, 126, 127),
          logo: 'assets/uber.png',
          companyname: 'Uber',
          role: 'Machine Learning',
          region: 'Texas',
        ),
      ],
      options: CarouselOptions(
        height: 220.0,
        autoPlay: false,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 2.0,
        initialPage: 2,
      ),
    );
  }
}

