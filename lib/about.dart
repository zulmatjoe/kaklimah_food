import 'package:flutter/material.dart';

// ignore: camel_case_types
class aboutKedai extends StatefulWidget {
  const aboutKedai({super.key});

  @override
  State<aboutKedai> createState() => _aboutKedaiState();
}

// ignore: camel_case_types
class _aboutKedaiState extends State<aboutKedai> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            header(),
            perkhidmatan(),
            address(),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          const Center(
            child: Text("About Kak Limah Enterprise",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                    fontWeight: FontWeight.w500)),
          ),
          const SizedBox(height: 20),
          Image.asset("assets/images/logo_kaklimah.png",
              height: 200, width: 200),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class perkhidmatan extends StatelessWidget {
  const perkhidmatan({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),
        Text(
          "Perkhidmatan Kami",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        Text(
          "Menjual Makanan dan Minuman\nKursus Pengendalian Makanan\nEvent / Food Caterer",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

// ignore: camel_case_types
class address extends StatelessWidget {
  const address({super.key});

  final String alamat =
      "101 Blok 1, Jalan Gelama 17/24,\nSeksyen 17, 40000 Shah Alam,\nSelangor Darul Ehsan";
  final String email = "haliza3@yahoo.com";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(
          "Alamat Kami",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        Text(
          alamat,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18),
        ),
        Text(email, style: const TextStyle(fontSize: 18)),
      ],
    );
  }
}
