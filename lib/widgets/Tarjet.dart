import 'package:flutter/material.dart';
import 'package:project1/widgets/carousel.dart';

class Tarjet extends StatefulWidget {
  Color color;
  String logo;
  String companyname;
  String role;
  String region;

  Tarjet({
    Key? key,
    required this.color,
    required this.logo,
    required this.companyname,
    required this.role,
    required this.region,
  }) : super(key: key);

  @override
  State<Tarjet> createState() => _TarjetState();
}

class _TarjetState extends State<Tarjet> {
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
    return Container(
      //width: 500.0,
      height: 100.0,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        color: widget.color,
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 0.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, 0.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Wrap(
        children: [
          Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      widget.logo,
                      width: 70,
                      height: 70,
                    ),
                    IconButton(
                      onPressed: changes,
                      icon: hearticon,
                      color: const Color.fromARGB(255, 179, 47, 47),
                      iconSize: 40,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  widget.companyname,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  widget.role,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Color.fromARGB(255, 199, 40, 40),
                      size: 15,
                    ),
                    Text(
                      widget.region,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
