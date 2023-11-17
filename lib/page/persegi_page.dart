import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rifki/controller/persegi_controller.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({Key? key}) : super(key: key);
final PersegiController _persegiController= Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("Persegi"),),
        body: Column(
          children: [
            Image.asset("assets/persegi.jpg", height:  100,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Persegi",
               style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Persegi bentuknya sama sisi dan bangun datar ini mempunyai 4 sisi sama  "
              ),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  onChanged: ((value) {
                    _persegiController.sisi = int.parse(value);
                  }),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Sisi",
                      hintText: "Masukkan Sisi",
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
                  _persegiController.hitungluas();}, child: Text("Hitung Luas", style: TextStyle(color:  Colors.green),))
        ),

        Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              _persegiController.hitungKeliling();}, child: Text("Hitung Keliling", style: TextStyle(color:  Colors.blue),))
        ),
      ],
    ),
            Obx(() => Text(_persegiController.hasil.value, style: TextStyle(color: _persegiController.warna.value),))
          ],

        ),
      );
  }
}
