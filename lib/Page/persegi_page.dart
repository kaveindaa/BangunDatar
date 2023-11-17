import 'package:bangun_datar_kelas_b/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({super.key});

  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PersegiPage"),
      ),
      body: Column(
        children: [
          Image.asset("asset/Persegi.jpeg"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Persegi",
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku. Persegi merupakan turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku (90°)")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value) {
                _persegiController.sisi = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  labelText: "Sisi",
                  hintText: "Masukkan Sisi",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  _persegiController.hitungluas();
                },
                child: Text("Hitung Luas"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black12))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  _persegiController.hitungkeliling();
                },
                child: Text("Hitung Keliling"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black12))),
          ),
          Obx(() => Text(
                _persegiController.hasil.value,
                style: TextStyle(color: _persegiController.textColor.value),

              ))
        ],
      ),
    );
  }
}
