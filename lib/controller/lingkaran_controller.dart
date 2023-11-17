import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranController extends GetxController{
  int r = 0;
  final hasil = "".obs;
  final warna = Rx<Color>(Colors.black);

  void hitungLuas(){
    double hitung = 3.14 * r * r;
    warna.value= Colors.green;
    hasil.value = "Hasil perhitungan dari 3.14 x $r x $r = $hitung";
  }
  void hitungKeliling() {
    double hitung = 2 * 3.14 * r;
    warna.value= Colors.blue;
    hasil.value = "Hasil perhitungan keliling dari 2 x 3.14 x $r = $hitung";
  }
}