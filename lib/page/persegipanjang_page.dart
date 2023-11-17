import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rifki/controller/persegipanjang_controller.dart';

import '../controller/persegipanjang_controller.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({Key? key}) : super(key: key);
final PersegiPanjangController  _persegiPanjangController= Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("Persegi Panjang"),),
        body: Column(
          children: [
            Image.asset("assets/persegi-panjangjpg.jpg", height:  100,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Persegi",
               style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              decoration:  BoxDecoration(
                color: Colors.green.shade300,borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              margin:  const EdgeInsets.all(8.0),
              padding:  const EdgeInsets.all(8.0),
                child: Text(
                    "Persegi bentuknya sama sisi dan bangun datar ini mempunyai 4 sisi sama  "
                ),),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  onChanged: ((value) {
                    _persegiPanjangController.panjang  = int.parse(value);
                  }),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Panjang",
                      hintText: "Masukkan panjang",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                onChanged: ((value) {
                  _persegiPanjangController.lebar  = int.parse(value);
                }),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Lebar",
                    hintText: "Masukkan Lebar",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
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
    Row(
      children: [
        Padding(
        padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: (){
                  _persegiPanjangController.hitungpanjang();}, child: Text("Hitung Luas", style: TextStyle(color:  Colors.green),))
        ),

        Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              _persegiPanjangController.hitungKeliling();}, child: Text("Hitung Keliling", style: TextStyle(color:  Colors.blue),))
        ),
      ],
    ),
            Obx(() => Text(_persegiPanjangController.hasil.value, style: TextStyle(color: _persegiPanjangController.warna.value),))
          ],

        ),
      );
  }
}
