import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Home Page",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF43515D)),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomMenu(
                    imageAsset: "asset/Persegi.jpeg", title: "Persegi"),
              ),Expanded(
                child: CustomMenu(
                    imageAsset: "asset/Persegi.jpeg", title: "Persegi"),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomMenu(
                    imageAsset: "asset/Lingkaran.jpeg", title: "Lingkaran"),
              ),Expanded(
                child: CustomMenu(
                    imageAsset: "asset/Lingkaran.jpeg", title: "Lingkaran"),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomMenu(
                    imageAsset: "asset/PersegiPanjang.jpeg",
                    title: "Persegi Panjang"),
              ),Expanded(
                child: CustomMenu(
                    imageAsset: "asset/PersegiPanjang.jpeg",
                    title: "Persegi Panjang"),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomMenu(
                    imageAsset: "asset/Segitiga.jpeg", title: "Segitiga"),
              ),Expanded(
                child: CustomMenu(
                    imageAsset: "asset/Segitiga.jpeg", title: "Segitiga"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      color: Colors.blueGrey.shade300,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Image.asset(imageAsset),
          Text(title),
        ],
      ),
    );
  }
}
