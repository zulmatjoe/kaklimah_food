import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class Food {
  final String img;
  final String name;
  final String price;

  Food({required this.img, required this.name, required this.price});
}

final List<Food> foods = [
  Food(
      img:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Nasi_dibentuk_bulat.jpg/800px-Nasi_dibentuk_bulat.jpg",
      name: "Nasi Putih",
      price: "1.50"),
  Food(
      img:
          "https://cariblogger.com/assets/img/2020/05/img-resepi-ayam-goreng-kfc-hot-n-spicy-thumbnail-min.jpg",
      name: "Ayam Goreng",
      price: "4.00 - 5.00"),
  Food(
      img:
          "https://2.bp.blogspot.com/-xFbdCeQS41E/XNBJforbTLI/AAAAAAAAFng/Zp_MJ5VfpJM7QwCD7f4rn-cJF6-8nVxxgCLcBGAs/s1600/IMG_8611.jpg",
      name: "Daging Masak Kicap",
      price: "5.00"),
  Food(
      img:
          "https://i1.wp.com/dailymakan.com/wp-content/uploads/2022/03/IKAN-KELI-GORENG-BERCILI-1.jpg?ssl=1",
      name: "Ikan Keli Berlada",
      price: "5.00"),
  Food(
      img: "https://i.ytimg.com/vi/IUBcNhAXWws/maxresdefault.jpg",
      name: "Sayur Kacang Panjang",
      price: "1.50"),
  Food(
      img:
          "https://www.rasa.my/wp-content/uploads/2020/07/Untitled-design80.jpg",
      name: "Ayam Buttermilk",
      price: "4.50 - 5.00"),
];

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text("Menu Hari Ini",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 22,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              _headerLauk(),
              _menuLauk(),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _menuLauk extends StatelessWidget {
  const _menuLauk();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: foods.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Image.network(
                      foods[index].img,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    title: Text(foods[index].name),
                    trailing: Text("RM ${foods[index].price}"),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

// ignore: camel_case_types
class _headerLauk extends StatelessWidget {
  const _headerLauk();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Menu",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w400)),
          Text("Harga",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}

// ignore: camel_case_types, unused_element
class _button extends StatelessWidget {
  const _button();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          // color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 150,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
                child: Text(
              "Makan Pagi",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
          ),
          Container(
            width: 150,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.cyan, borderRadius: BorderRadius.circular(10)),
            child: const Center(
                child: Text(
              "Makan\nTengahari",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ],
      ),
    );
  }
}
