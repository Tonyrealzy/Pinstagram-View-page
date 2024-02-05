import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Center(
                child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text('Pinstagram',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ))),
        body: const SingleChildScrollView(
          child: Column(children: [
            Imagesection(image: 'assets/images/Class.jpg'),
            Titlesection(
              place: 'Oeschinen Lake Campground',
              location: 'Kandersteg, Switzerland',
            ),
            Buttonsection(),
            TextSection(text: 'text'),
          ]),
        ),
      ),
    );
  }
}

class Imagesection extends StatelessWidget {
  const Imagesection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32.0),
      child: Text(
        'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest leads you to the lake, which warms up to 20 degrees Celsius in the summer. Activities enjoyed here include rowing and riding the summer toboggan run.',
        softWrap: true,
      ),
    );
  }
}

class Titlesection extends StatelessWidget {
  const Titlesection({super.key, required this.place, required this.location});

  final String place;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(place,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Text(location, style: const TextStyle(color: Colors.grey))
            ],
          ),
        ),
        const Icon(
          Icons.star,
          color: Colors.red,
          size: 25,
        ),
        const Text('41'),
      ]),
    );
  }
}

class Buttonwithtext extends StatelessWidget {
  const Buttonwithtext({super.key, required this.color, required this.icon, required this.label});

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min,
      children: [Icon(icon, color: color), Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: color))],
    );
  }
}

class Buttonsection extends StatelessWidget {
  const Buttonsection({super.key});

  final Color color = Colors.deepPurpleAccent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Buttonwithtext(color: color, icon: Icons.phone, label: 'CALL'),
          Buttonwithtext(color: color, icon: Icons.near_me, label: 'ROUTE'),
          Buttonwithtext(color: color, icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }
}
