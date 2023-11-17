import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rifki/controller/lingkaran_controller.dart';

class lingkaranPage extends StatelessWidget {
  lingkaranPage({Key? key}) : super(key: key);
final LingkaranController _lingkaranController= Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("Persegi"),),
        body: Column(
          children: [
            Image.asset("assets/Lingkaran.webp", height:  100,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lingkaran",
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
                    _lingkaranController.r = int.parse(value);
                  }),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Jari - Jari",
                      hintText: "Masukkan Jari-Jari",
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
                  _lingkaranController.hitungLuas();}, child: Text("Hitung Luas", style: TextStyle(color:  Colors.green),))
        ),

        Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              _lingkaranController.hitungKeliling();}, child: Text("Hitung Keliling", style: TextStyle(color:  Colors.blue),))
        ),
      ],
    ),
            Obx(() => Text(_lingkaranController.hasil.value, style: TextStyle(color: _lingkaranController.warna.value),))
          ],

        ),
      );
  }
}
