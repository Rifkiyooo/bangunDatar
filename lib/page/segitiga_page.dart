import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rifki/controller/segitiga_controller.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({Key? key}) : super(key: key);
final SegitigaController _segitigaController= Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("Persegi"),),
        body: Column(
          children: [
            Image.asset("assets/segitiga.png", height:  100,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Segitiga",
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
                    _segitigaController.alas = int.parse(value);
                  }),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "alas",
                      hintText: "Masukkan Alas",
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
                  _segitigaController.tinggi = int.parse(value);
                }),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Tinggi",
                    hintText: "Masukkan Tinggi",
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
                  _segitigaController.hitungluas();}, child: Text("Hitung Luas", style: TextStyle(color:  Colors.green),))
        ),

        Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              _segitigaController.hitungKeliling();}, child: Text("Hitung Keliling", style: TextStyle(color:  Colors.blue),))
        ),
      ],
    ),
            Obx(() => Text(_segitigaController.hasil.value, style: TextStyle(color: _segitigaController.warna.value),))
          ],

        ),
      );
  }
}
